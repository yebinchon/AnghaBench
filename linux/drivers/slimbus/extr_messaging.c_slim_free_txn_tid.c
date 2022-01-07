
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_msg_txn {int tid; } ;
struct slim_controller {int txn_lock; int tid_idr; } ;


 int idr_remove (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void slim_free_txn_tid(struct slim_controller *ctrl, struct slim_msg_txn *txn)
{
 unsigned long flags;

 spin_lock_irqsave(&ctrl->txn_lock, flags);
 idr_remove(&ctrl->tid_idr, txn->tid);
 spin_unlock_irqrestore(&ctrl->txn_lock, flags);
}
