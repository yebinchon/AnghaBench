
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_ctrl_blk {scalar_t__ opcode; scalar_t__ tagmsg; size_t target; struct scsi_ctrl_blk* next; } ;
struct initio_host {scalar_t__* act_tags; scalar_t__* max_tags; TYPE_1__* targets; struct scsi_ctrl_blk* first_pending; } ;
struct TYPE_2__ {int flags; } ;


 scalar_t__ ExecSCSI ;
 int TCF_BUSY ;

__attribute__((used)) static struct scsi_ctrl_blk *initio_find_first_pend_scb(struct initio_host * host)
{
 struct scsi_ctrl_blk *first;


 first = host->first_pending;
 while (first != ((void*)0)) {
  if (first->opcode != ExecSCSI)
   return first;
  if (first->tagmsg == 0) {
   if ((host->act_tags[first->target] == 0) &&
       !(host->targets[first->target].flags & TCF_BUSY))
    return first;
  } else {
   if ((host->act_tags[first->target] >=
     host->max_tags[first->target]) |
       (host->targets[first->target].flags & TCF_BUSY)) {
    first = first->next;
    continue;
   }
   return first;
  }
  first = first->next;
 }
 return first;
}
