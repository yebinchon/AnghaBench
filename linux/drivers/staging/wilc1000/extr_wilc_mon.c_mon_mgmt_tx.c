
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tx_complete_mon_data {size_t size; int buff; } ;
struct net_device {int dummy; } ;


 int EFAULT ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int kfree (struct tx_complete_mon_data*) ;
 struct tx_complete_mon_data* kmalloc (int,int ) ;
 int kmemdup (int const*,size_t,int ) ;
 int mgmt_tx_complete ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int wilc_wlan_txq_add_mgmt_pkt (struct net_device*,struct tx_complete_mon_data*,int ,size_t,int ) ;

__attribute__((used)) static int mon_mgmt_tx(struct net_device *dev, const u8 *buf, size_t len)
{
 struct tx_complete_mon_data *mgmt_tx = ((void*)0);

 if (!dev)
  return -EFAULT;

 netif_stop_queue(dev);
 mgmt_tx = kmalloc(sizeof(*mgmt_tx), GFP_ATOMIC);
 if (!mgmt_tx)
  return -ENOMEM;

 mgmt_tx->buff = kmemdup(buf, len, GFP_ATOMIC);
 if (!mgmt_tx->buff) {
  kfree(mgmt_tx);
  return -ENOMEM;
 }

 mgmt_tx->size = len;

 wilc_wlan_txq_add_mgmt_pkt(dev, mgmt_tx, mgmt_tx->buff, mgmt_tx->size,
       mgmt_tx_complete);

 netif_wake_queue(dev);
 return 0;
}
