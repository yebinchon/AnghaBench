
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct r8192_priv {TYPE_1__* tx_ring; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int dma; } ;


 size_t MAX_TX_QUEUE_COUNT ;
 int * TX_DESC_BASE ;
 int rtl92e_writel (struct net_device*,int ,int ) ;
 scalar_t__ rtllib_priv (struct net_device*) ;

void rtl92e_enable_tx(struct net_device *dev)
{
 struct r8192_priv *priv = (struct r8192_priv *)rtllib_priv(dev);
 u32 i;

 for (i = 0; i < MAX_TX_QUEUE_COUNT; i++)
  rtl92e_writel(dev, TX_DESC_BASE[i], priv->tx_ring[i].dma);
}
