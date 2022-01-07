
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct tcp_ack_filter {size_t pending_base; size_t pending_acks_idx; scalar_t__ tcp_session; TYPE_2__* pending_acks; TYPE_1__* ack_session_info; } ;
struct wilc_vif {struct tcp_ack_filter ack_filter; struct wilc* wilc; } ;
struct wilc {int txq_event; int txq_spinlock; } ;
struct txq_entry_t {int status; int priv; int (* tx_complete_func ) (int ,int) ;} ;
struct net_device {int dummy; } ;
struct TYPE_4__ {size_t session_index; size_t ack_num; struct txq_entry_t* txqe; } ;
struct TYPE_3__ {size_t bigger_ack_num; } ;


 size_t MAX_PENDING_ACKS ;
 int MAX_TCP_SESSION ;
 int kfree (struct txq_entry_t*) ;
 int msecs_to_jiffies (int) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int) ;
 int wait_for_completion_timeout (int *,int ) ;
 int wilc_wlan_txq_remove (struct wilc*,struct txq_entry_t*) ;

__attribute__((used)) static void wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
{
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc *wilc = vif->wilc;
 struct tcp_ack_filter *f = &vif->ack_filter;
 u32 i = 0;
 u32 dropped = 0;
 unsigned long flags;

 spin_lock_irqsave(&wilc->txq_spinlock, flags);
 for (i = f->pending_base;
      i < (f->pending_base + f->pending_acks_idx); i++) {
  u32 index;
  u32 bigger_ack_num;

  if (i >= MAX_PENDING_ACKS)
   break;

  index = f->pending_acks[i].session_index;

  if (index >= 2 * MAX_TCP_SESSION)
   break;

  bigger_ack_num = f->ack_session_info[index].bigger_ack_num;

  if (f->pending_acks[i].ack_num < bigger_ack_num) {
   struct txq_entry_t *tqe;

   tqe = f->pending_acks[i].txqe;
   if (tqe) {
    wilc_wlan_txq_remove(wilc, tqe);
    tqe->status = 1;
    if (tqe->tx_complete_func)
     tqe->tx_complete_func(tqe->priv,
             tqe->status);
    kfree(tqe);
    dropped++;
   }
  }
 }
 f->pending_acks_idx = 0;
 f->tcp_session = 0;

 if (f->pending_base == 0)
  f->pending_base = MAX_TCP_SESSION;
 else
  f->pending_base = 0;

 spin_unlock_irqrestore(&wilc->txq_spinlock, flags);

 while (dropped > 0) {
  wait_for_completion_timeout(&wilc->txq_event,
         msecs_to_jiffies(1));
  dropped--;
 }
}
