
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wilc_vif {struct wilc* wilc; } ;
struct wilc {int quit; TYPE_1__* hif_func; struct txq_entry_t* tx_buffer; struct txq_entry_t* rx_buffer; } ;
struct txq_entry_t {int priv; int (* tx_complete_func ) (int ,int ) ;} ;
struct rxq_entry_t {int priv; int (* tx_complete_func ) (int ,int ) ;} ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* hif_deinit ) (int *) ;} ;


 int kfree (struct txq_entry_t*) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int stub1 (int ,int ) ;
 int stub2 (int *) ;
 struct txq_entry_t* wilc_wlan_rxq_remove (struct wilc*) ;
 struct txq_entry_t* wilc_wlan_txq_remove_from_head (struct net_device*) ;

void wilc_wlan_cleanup(struct net_device *dev)
{
 struct txq_entry_t *tqe;
 struct rxq_entry_t *rqe;
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc *wilc = vif->wilc;

 wilc->quit = 1;
 do {
  tqe = wilc_wlan_txq_remove_from_head(dev);
  if (!tqe)
   break;
  if (tqe->tx_complete_func)
   tqe->tx_complete_func(tqe->priv, 0);
  kfree(tqe);
 } while (1);

 do {
  rqe = wilc_wlan_rxq_remove(wilc);
  if (!rqe)
   break;
  kfree(rqe);
 } while (1);

 kfree(wilc->rx_buffer);
 wilc->rx_buffer = ((void*)0);
 kfree(wilc->tx_buffer);
 wilc->tx_buffer = ((void*)0);
 wilc->hif_func->hif_deinit(((void*)0));
}
