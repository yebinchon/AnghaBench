
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wilc_vif {int ndev; struct wilc* wilc; } ;
struct wilc {int cfg_event; scalar_t__ quit; } ;
struct txq_entry_t {struct wilc_vif* vif; int ack_idx; int * priv; int * tx_complete_func; int buffer_size; int * buffer; int type; } ;


 int GFP_ATOMIC ;
 int NOT_TCP_ACK ;
 int WILC_CFG_PKT ;
 int complete (int *) ;
 struct txq_entry_t* kmalloc (int,int ) ;
 int netdev_dbg (int ,char*) ;
 int wilc_wlan_txq_add_to_head (struct wilc_vif*,struct txq_entry_t*) ;

__attribute__((used)) static int wilc_wlan_txq_add_cfg_pkt(struct wilc_vif *vif, u8 *buffer,
         u32 buffer_size)
{
 struct txq_entry_t *tqe;
 struct wilc *wilc = vif->wilc;

 netdev_dbg(vif->ndev, "Adding config packet ...\n");
 if (wilc->quit) {
  netdev_dbg(vif->ndev, "Return due to clear function\n");
  complete(&wilc->cfg_event);
  return 0;
 }

 tqe = kmalloc(sizeof(*tqe), GFP_ATOMIC);
 if (!tqe)
  return 0;

 tqe->type = WILC_CFG_PKT;
 tqe->buffer = buffer;
 tqe->buffer_size = buffer_size;
 tqe->tx_complete_func = ((void*)0);
 tqe->priv = ((void*)0);
 tqe->ack_idx = NOT_TCP_ACK;
 tqe->vif = vif;

 wilc_wlan_txq_add_to_head(vif, tqe);

 return 1;
}
