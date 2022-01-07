
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int * rx_ring_dma; } ;
struct net_device {int dummy; } ;


 int RDQDA ;
 size_t RX_MPDU_QUEUE ;
 int rtl92e_writel (struct net_device*,int ,int ) ;
 scalar_t__ rtllib_priv (struct net_device*) ;

void rtl92e_enable_rx(struct net_device *dev)
{
 struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);

 rtl92e_writel(dev, RDQDA, priv->rx_ring_dma[RX_MPDU_QUEUE]);
}
