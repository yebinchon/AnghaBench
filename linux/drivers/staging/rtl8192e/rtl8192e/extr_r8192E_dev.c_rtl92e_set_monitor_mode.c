
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int ReceiveConfig; } ;
struct net_device {int dummy; } ;


 int RCR ;
 int RCR_AAP ;
 int rtl92e_writel (struct net_device*,int ,int ) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

void rtl92e_set_monitor_mode(struct net_device *dev, bool bAllowAllDA,
        bool WriteIntoReg)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 if (bAllowAllDA)
  priv->ReceiveConfig |= RCR_AAP;
 else
  priv->ReceiveConfig &= ~RCR_AAP;

 if (WriteIntoReg)
  rtl92e_writel(dev, RCR, priv->ReceiveConfig);
}
