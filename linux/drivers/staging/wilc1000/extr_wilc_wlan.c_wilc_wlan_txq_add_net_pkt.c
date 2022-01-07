
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct wilc_vif {TYPE_1__ ack_filter; struct wilc* wilc; } ;
struct wilc {int txq_entries; scalar_t__ quit; } ;
struct txq_entry_t {void (* tx_complete_func ) (void*,int) ;int ack_idx; struct wilc_vif* vif; void* priv; int buffer_size; int * buffer; int type; } ;
struct net_device {int dummy; } ;


 int GFP_ATOMIC ;
 int NOT_TCP_ACK ;
 int WILC_NET_PKT ;
 struct txq_entry_t* kmalloc (int,int ) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int tcp_process (struct net_device*,struct txq_entry_t*) ;
 int wilc_wlan_txq_add_to_tail (struct net_device*,struct txq_entry_t*) ;

int wilc_wlan_txq_add_net_pkt(struct net_device *dev, void *priv, u8 *buffer,
         u32 buffer_size,
         void (*tx_complete_fn)(void *, int))
{
 struct txq_entry_t *tqe;
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc *wilc;

 wilc = vif->wilc;

 if (wilc->quit)
  return 0;

 tqe = kmalloc(sizeof(*tqe), GFP_ATOMIC);

 if (!tqe)
  return 0;
 tqe->type = WILC_NET_PKT;
 tqe->buffer = buffer;
 tqe->buffer_size = buffer_size;
 tqe->tx_complete_func = tx_complete_fn;
 tqe->priv = priv;
 tqe->vif = vif;

 tqe->ack_idx = NOT_TCP_ACK;
 if (vif->ack_filter.enabled)
  tcp_process(dev, tqe);
 wilc_wlan_txq_add_to_tail(dev, tqe);
 return wilc->txq_entries;
}
