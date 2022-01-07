
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8192_tx_ring {int entries; int queue; } ;
struct r8192_priv {struct rtl8192_tx_ring* tx_ring; } ;
struct net_device {int dummy; } ;


 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int skb_queue_len (int *) ;

__attribute__((used)) static short _rtl92e_check_nic_enough_desc(struct net_device *dev, int prio)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 struct rtl8192_tx_ring *ring = &priv->tx_ring[prio];

 if (ring->entries - skb_queue_len(&ring->queue) >= 2)
  return 1;
 return 0;
}
