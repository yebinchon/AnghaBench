
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef short u32 ;
struct r8192_priv {TYPE_1__* tx_ring; int txringcount; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ desc; } ;


 int MAX_TX_QUEUE_COUNT ;
 short _rtl92e_alloc_rx_ring (struct net_device*) ;
 short _rtl92e_alloc_tx_ring (struct net_device*,int,int ) ;
 int _rtl92e_free_rx_ring (struct net_device*) ;
 int _rtl92e_free_tx_ring (struct net_device*,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static short _rtl92e_pci_initdescring(struct net_device *dev)
{
 u32 ret;
 int i;
 struct r8192_priv *priv = rtllib_priv(dev);

 ret = _rtl92e_alloc_rx_ring(dev);
 if (ret)
  return ret;

 for (i = 0; i < MAX_TX_QUEUE_COUNT; i++) {
  ret = _rtl92e_alloc_tx_ring(dev, i, priv->txringcount);
  if (ret)
   goto err_free_rings;
 }

 return 0;

err_free_rings:
 _rtl92e_free_rx_ring(dev);
 for (i = 0; i < MAX_TX_QUEUE_COUNT; i++)
  if (priv->tx_ring[i].desc)
   _rtl92e_free_tx_ring(dev, i);
 return 1;
}
