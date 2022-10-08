#!/bin/sh
# V2Ray new configuration
# Run V2ray
# Write V2Ray configuration
UUID=6363b0d4-3485-4863-a09b-7e119bfc07ec
PATHM=wdghtht
cat << EOF > /etc/v2ray/config.json
{
    "inbounds": [{
        "port": 8080,
        "protocol": "vmess",
        "settings": {
            "clients": [{
                "id": "$UUID",
                "alterId": 0
            }]
        },
        "streamSettings": {
            "network": "ws",
            "wsSettings": {
                "path": "/6363b0d4-3485-4863-a09b-7e119bfc07ec"
            }
        }
    }],
    "outbounds": [{
        "protocol": "freedom"
    }]
}
EOF

#Run V2ray

/usr/bin/v2ray/v2ray  run -config=/etc/v2ray/config.json
