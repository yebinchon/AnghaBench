
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct scsi_cmnd {int dummy; } ;
struct orc_scb {scalar_t__ tag_msg; scalar_t__ status; struct orc_extended_scb* escb; } ;
struct orc_host {int allocation_lock; struct orc_scb* scb_virt; } ;
struct orc_extended_scb {struct scsi_cmnd* srb; } ;


 int FAILED ;
 scalar_t__ ORC_MAXQUEUE ;
 int SUCCESS ;
 scalar_t__ orchid_abort_scb (struct orc_host*,struct orc_scb*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int inia100_abort_cmd(struct orc_host * host, struct scsi_cmnd *cmd)
{
 struct orc_extended_scb *escb;
 struct orc_scb *scb;
 u8 i;
 unsigned long flags;

 spin_lock_irqsave(&(host->allocation_lock), flags);

 scb = host->scb_virt;





 for (i = 0; i < ORC_MAXQUEUE; i++, scb++) {
  escb = scb->escb;
  if (scb->status && escb->srb == cmd) {
   if (scb->tag_msg == 0) {
    goto out;
   } else {

    if (orchid_abort_scb(host, scb)) {
     escb->srb = ((void*)0);
     spin_unlock_irqrestore(&host->allocation_lock, flags);
     return SUCCESS;
    } else
     goto out;
   }
  }
 }
out:
 spin_unlock_irqrestore(&host->allocation_lock, flags);
 return FAILED;
}
