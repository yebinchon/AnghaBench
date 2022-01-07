
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct slim_val_inf {int * rbuf; } ;
struct slim_msg_txn {scalar_t__ comp; struct slim_val_inf* msg; } ;
struct slim_controller {int dev; int txn_lock; int tid_idr; } ;


 int complete (scalar_t__) ;
 int dev_err (int ,char*,int ,int ) ;
 struct slim_msg_txn* idr_find (int *,int ) ;
 int memcpy (int *,int *,int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int slim_free_txn_tid (struct slim_controller*,struct slim_msg_txn*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void slim_msg_response(struct slim_controller *ctrl, u8 *reply, u8 tid, u8 len)
{
 struct slim_msg_txn *txn;
 struct slim_val_inf *msg;
 unsigned long flags;

 spin_lock_irqsave(&ctrl->txn_lock, flags);
 txn = idr_find(&ctrl->tid_idr, tid);
 spin_unlock_irqrestore(&ctrl->txn_lock, flags);

 if (txn == ((void*)0))
  return;

 msg = txn->msg;
 if (msg == ((void*)0) || msg->rbuf == ((void*)0)) {
  dev_err(ctrl->dev, "Got response to invalid TID:%d, len:%d\n",
    tid, len);
  return;
 }

 slim_free_txn_tid(ctrl, txn);
 memcpy(msg->rbuf, reply, len);
 if (txn->comp)
  complete(txn->comp);


 pm_runtime_mark_last_busy(ctrl->dev);
 pm_runtime_put_autosuspend(ctrl->dev);
}
