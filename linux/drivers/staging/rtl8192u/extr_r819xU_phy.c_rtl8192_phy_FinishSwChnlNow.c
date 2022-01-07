
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct r8192_priv {int up; int SwChnlStep; int SwChnlStage; } ;
struct net_device {int dummy; } ;


 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rtl8192_phy_SwChnlStepByStep (struct net_device*,int ,int *,int *,int *) ;

__attribute__((used)) static void rtl8192_phy_FinishSwChnlNow(struct net_device *dev, u8 channel)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u32 delay = 0;

 while (!rtl8192_phy_SwChnlStepByStep(dev, channel, &priv->SwChnlStage,
          &priv->SwChnlStep, &delay)) {
  if (!priv->up)
   break;
 }
}
