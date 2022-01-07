
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int irq_enabled; int * irq_mask; } ;
struct net_device {int dummy; } ;


 int INTA_MASK ;
 int rtl92e_writel (struct net_device*,int ,int ) ;
 scalar_t__ rtllib_priv (struct net_device*) ;

void rtl92e_enable_irq(struct net_device *dev)
{
 struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);

 priv->irq_enabled = 1;

 rtl92e_writel(dev, INTA_MASK, priv->irq_mask[0]);

}
