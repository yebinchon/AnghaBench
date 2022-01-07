
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_ctrl_blk {size_t target; scalar_t__ tagmsg; struct scsi_ctrl_blk* next; } ;
struct initio_host {TYPE_1__* targets; int * act_tags; int * last_busy; struct scsi_ctrl_blk* first_busy; } ;
struct TYPE_2__ {int flags; } ;


 int TCF_BUSY ;
 int printk (char*,struct scsi_ctrl_blk*) ;

__attribute__((used)) static struct scsi_ctrl_blk *initio_pop_busy_scb(struct initio_host * host)
{
 struct scsi_ctrl_blk *tmp;


 if ((tmp = host->first_busy) != ((void*)0)) {
  if ((host->first_busy = tmp->next) == ((void*)0))
   host->last_busy = ((void*)0);
  tmp->next = ((void*)0);
  if (tmp->tagmsg)
   host->act_tags[tmp->target]--;
  else
   host->targets[tmp->target].flags &= ~TCF_BUSY;
 }



 return tmp;
}
