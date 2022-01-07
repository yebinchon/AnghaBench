
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wilc_vif {struct wilc* wilc; } ;
struct wilc {scalar_t__ quit; } ;
struct txq_entry_t {void (* tx_complete_func ) (void*,int) ;struct wilc_vif* vif; int ack_idx; void* priv; int buffer_size; int * buffer; int type; } ;
struct net_device {int dummy; } ;


 int GFP_ATOMIC ;
 int NOT_TCP_ACK ;
 int WILC_MGMT_PKT ;
 struct txq_entry_t* kmalloc (int,int ) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int wilc_wlan_txq_add_to_tail (struct net_device*,struct txq_entry_t*) ;

int wilc_wlan_txq_add_mgmt_pkt(struct net_device *dev, void *priv, u8 *buffer,
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
 tqe->type = WILC_MGMT_PKT;
 tqe->buffer = buffer;
 tqe->buffer_size = buffer_size;
 tqe->tx_complete_func = tx_complete_fn;
 tqe->priv = priv;
 tqe->ack_idx = NOT_TCP_ACK;
 tqe->vif = vif;
 wilc_wlan_txq_add_to_tail(dev, tqe);
 return 1;
}
