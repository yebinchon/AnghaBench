
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r8192_priv {scalar_t__ CurrentChannelBW; scalar_t__ undecorated_smoothed_pwdb; TYPE_2__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int bforced_tx20Mhz; scalar_t__ threshold_40Mhzto20Mhz; scalar_t__ threshold_20Mhzto40Mhz; int bautoswitch_enable; } ;
struct TYPE_4__ {TYPE_1__ bandwidth_auto_switch; } ;


 scalar_t__ HT_CHANNEL_WIDTH_20 ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_dm_bandwidth_autoswitch(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 if (priv->CurrentChannelBW == HT_CHANNEL_WIDTH_20 ||
    !priv->rtllib->bandwidth_auto_switch.bautoswitch_enable)
  return;
 if (priv->rtllib->bandwidth_auto_switch.bforced_tx20Mhz == 0) {
  if (priv->undecorated_smoothed_pwdb <=
      priv->rtllib->bandwidth_auto_switch.threshold_40Mhzto20Mhz)
   priv->rtllib->bandwidth_auto_switch.bforced_tx20Mhz = 1;
 } else {
  if (priv->undecorated_smoothed_pwdb >=
      priv->rtllib->bandwidth_auto_switch.threshold_20Mhzto40Mhz)
   priv->rtllib->bandwidth_auto_switch.bforced_tx20Mhz = 0;
 }
}
