
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct TYPE_10__ {int list; int state; } ;
typedef TYPE_3__ scb_t ;
struct TYPE_11__ {int lock; int quiescent; int pending_list; } ;
typedef TYPE_4__ adapter_t ;
struct TYPE_9__ {TYPE_1__* host; } ;
struct TYPE_8__ {scalar_t__ hostdata; } ;


 int SCB_PENDQ ;
 scalar_t__ atomic_read (int *) ;
 int list_add_tail (int *,int *) ;
 TYPE_3__* mega_build_cmd (TYPE_4__*,struct scsi_cmnd*,int*) ;
 int mega_runpendq (TYPE_4__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
megaraid_queue_lck(struct scsi_cmnd *scmd, void (*done)(struct scsi_cmnd *))
{
 adapter_t *adapter;
 scb_t *scb;
 int busy=0;
 unsigned long flags;

 adapter = (adapter_t *)scmd->device->host->hostdata;

 scmd->scsi_done = done;
 spin_lock_irqsave(&adapter->lock, flags);
 scb = mega_build_cmd(adapter, scmd, &busy);
 if (!scb)
  goto out;

 scb->state |= SCB_PENDQ;
 list_add_tail(&scb->list, &adapter->pending_list);






 if (atomic_read(&adapter->quiescent) == 0)
  mega_runpendq(adapter);

 busy = 0;
 out:
 spin_unlock_irqrestore(&adapter->lock, flags);
 return busy;
}
