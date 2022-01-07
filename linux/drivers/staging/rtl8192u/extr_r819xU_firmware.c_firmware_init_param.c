
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {TYPE_1__* pFirmware; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int cmdpacket_frag_threshold; } ;
typedef TYPE_1__ rt_firmware ;


 int GET_COMMAND_PACKET_FRAG_THRESHOLD (int ) ;
 int MAX_TRANSMIT_BUFFER_SIZE ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void firmware_init_param(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 rt_firmware *pfirmware = priv->pFirmware;

 pfirmware->cmdpacket_frag_threshold = GET_COMMAND_PACKET_FRAG_THRESHOLD(MAX_TRANSMIT_BUFFER_SIZE);
}
