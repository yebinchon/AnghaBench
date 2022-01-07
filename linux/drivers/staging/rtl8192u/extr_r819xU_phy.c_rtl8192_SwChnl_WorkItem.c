
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int chan; } ;
struct net_device {int dummy; } ;


 int COMP_CH ;
 int RT_TRACE (int ,char*,...) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rtl8192_phy_FinishSwChnlNow (struct net_device*,int ) ;

void rtl8192_SwChnl_WorkItem(struct net_device *dev)
{

 struct r8192_priv *priv = ieee80211_priv(dev);

 RT_TRACE(COMP_CH, "==> SwChnlCallback819xUsbWorkItem(), chan:%d\n",
   priv->chan);


 rtl8192_phy_FinishSwChnlNow(dev, priv->chan);

 RT_TRACE(COMP_CH, "<== SwChnlCallback819xUsbWorkItem()\n");
}
