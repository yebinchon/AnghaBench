
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct r8192_priv {int up; int SwChnlStep; int SwChnlStage; } ;
struct net_device {int dummy; } ;


 int _rtl92e_phy_switch_channel_step (struct net_device*,int ,int *,int *,scalar_t__*) ;
 int msleep (scalar_t__) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_phy_switch_channel(struct net_device *dev, u8 channel)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 u32 delay = 0;

 while (!_rtl92e_phy_switch_channel_step(dev, channel,
      &priv->SwChnlStage,
      &priv->SwChnlStep, &delay)) {
  if (delay > 0)
   msleep(delay);
  if (!priv->up)
   break;
 }
}
