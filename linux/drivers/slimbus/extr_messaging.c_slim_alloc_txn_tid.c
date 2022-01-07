
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_msg_txn {int tid; } ;
struct slim_controller {int txn_lock; int tid_idr; } ;


 int GFP_ATOMIC ;
 int SLIM_MAX_TIDS ;
 int idr_alloc_cyclic (int *,struct slim_msg_txn*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int slim_alloc_txn_tid(struct slim_controller *ctrl, struct slim_msg_txn *txn)
{
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&ctrl->txn_lock, flags);
 ret = idr_alloc_cyclic(&ctrl->tid_idr, txn, 0,
    SLIM_MAX_TIDS, GFP_ATOMIC);
 if (ret < 0) {
  spin_unlock_irqrestore(&ctrl->txn_lock, flags);
  return ret;
 }
 txn->tid = ret;
 spin_unlock_irqrestore(&ctrl->txn_lock, flags);
 return 0;
}
