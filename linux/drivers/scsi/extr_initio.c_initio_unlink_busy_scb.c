
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_ctrl_blk {size_t target; struct scsi_ctrl_blk* next; scalar_t__ tagmsg; } ;
struct initio_host {TYPE_1__* targets; int * act_tags; struct scsi_ctrl_blk* last_busy; struct scsi_ctrl_blk* first_busy; } ;
struct TYPE_2__ {int flags; } ;


 int TCF_BUSY ;
 int printk (char*,struct scsi_ctrl_blk*) ;

__attribute__((used)) static void initio_unlink_busy_scb(struct initio_host * host, struct scsi_ctrl_blk * scb)
{
 struct scsi_ctrl_blk *tmp, *prev;





 prev = tmp = host->first_busy;
 while (tmp != ((void*)0)) {
  if (scb == tmp) {
   if (tmp == host->first_busy) {
    if ((host->first_busy = tmp->next) == ((void*)0))
     host->last_busy = ((void*)0);
   } else {
    prev->next = tmp->next;
    if (tmp == host->last_busy)
     host->last_busy = prev;
   }
   tmp->next = ((void*)0);
   if (tmp->tagmsg)
    host->act_tags[tmp->target]--;
   else
    host->targets[tmp->target].flags &= ~TCF_BUSY;
   break;
  }
  prev = tmp;
  tmp = tmp->next;
 }
 return;
}
