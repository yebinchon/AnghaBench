
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct st_hba {TYPE_1__* host; struct st_ccb* ccb; } ;
struct st_ccb {TYPE_2__* cmd; int * req; } ;
struct TYPE_5__ {int result; int (* scsi_done ) (TYPE_2__*) ;} ;
struct TYPE_4__ {size_t can_queue; int host_lock; } ;


 int scsi_dma_unmap (TYPE_2__*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void return_abnormal_state(struct st_hba *hba, int status)
{
 struct st_ccb *ccb;
 unsigned long flags;
 u16 tag;

 spin_lock_irqsave(hba->host->host_lock, flags);
 for (tag = 0; tag < hba->host->can_queue; tag++) {
  ccb = &hba->ccb[tag];
  if (ccb->req == ((void*)0))
   continue;
  ccb->req = ((void*)0);
  if (ccb->cmd) {
   scsi_dma_unmap(ccb->cmd);
   ccb->cmd->result = status << 16;
   ccb->cmd->scsi_done(ccb->cmd);
   ccb->cmd = ((void*)0);
  }
 }
 spin_unlock_irqrestore(hba->host->host_lock, flags);
}
