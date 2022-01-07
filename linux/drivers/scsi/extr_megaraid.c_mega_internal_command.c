
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int state; int list; int * pthru; int raw_mbox; int idx; } ;
typedef TYPE_2__ scb_t ;
struct TYPE_12__ {scalar_t__ cmd; int status; int subopcode; int opcode; } ;
typedef TYPE_3__ megacmd_t ;
typedef int mega_passthru ;
struct TYPE_13__ {int int_status; int int_mtx; TYPE_1__* dev; int int_waitq; int lock; int quiescent; int pending_list; TYPE_2__ int_scb; } ;
typedef TYPE_4__ adapter_t ;
struct TYPE_10__ {int dev; } ;


 int CMDID_INT_CMDS ;
 scalar_t__ MEGA_MBOXCMD_PASSTHRU ;
 int SCB_ACTIVE ;
 int SCB_PENDQ ;
 scalar_t__ atomic_read (int *) ;
 int dev_info (int *,char*,scalar_t__,int ,int ,int) ;
 int list_add_tail (int *,int *) ;
 int mega_runpendq (TYPE_4__*) ;
 int memcpy (int ,TYPE_3__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ trace_level ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int
mega_internal_command(adapter_t *adapter, megacmd_t *mc, mega_passthru *pthru)
{
 unsigned long flags;
 scb_t *scb;
 int rval;






 mutex_lock(&adapter->int_mtx);

 scb = &adapter->int_scb;
 memset(scb, 0, sizeof(scb_t));

 scb->idx = CMDID_INT_CMDS;
 scb->state |= SCB_ACTIVE | SCB_PENDQ;

 memcpy(scb->raw_mbox, mc, sizeof(megacmd_t));




 if (mc->cmd == MEGA_MBOXCMD_PASSTHRU)
  scb->pthru = pthru;

 spin_lock_irqsave(&adapter->lock, flags);
 list_add_tail(&scb->list, &adapter->pending_list);





 if (atomic_read(&adapter->quiescent) == 0)
  mega_runpendq(adapter);
 spin_unlock_irqrestore(&adapter->lock, flags);

 wait_for_completion(&adapter->int_waitq);

 mc->status = rval = adapter->int_status;





 if (rval && trace_level) {
  dev_info(&adapter->dev->dev, "cmd [%x, %x, %x] status:[%x]\n",
   mc->cmd, mc->opcode, mc->subopcode, rval);
 }

 mutex_unlock(&adapter->int_mtx);
 return rval;
}
