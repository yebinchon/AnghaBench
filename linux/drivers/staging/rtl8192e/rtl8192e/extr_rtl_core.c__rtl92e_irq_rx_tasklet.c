
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {TYPE_1__* rtllib; } ;
struct TYPE_2__ {int dev; } ;


 int IMR_RDU ;
 int INTA_MASK ;
 int _rtl92e_rx_normal (int ) ;
 int rtl92e_readl (int ,int ) ;
 int rtl92e_writel (int ,int ,int) ;

__attribute__((used)) static void _rtl92e_irq_rx_tasklet(struct r8192_priv *priv)
{
 _rtl92e_rx_normal(priv->rtllib->dev);

 rtl92e_writel(priv->rtllib->dev, INTA_MASK,
        rtl92e_readl(priv->rtllib->dev, INTA_MASK) | IMR_RDU);
}
