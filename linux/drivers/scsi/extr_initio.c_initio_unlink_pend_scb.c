
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_ctrl_blk {struct scsi_ctrl_blk* next; } ;
struct initio_host {struct scsi_ctrl_blk* last_pending; struct scsi_ctrl_blk* first_pending; } ;


 int printk (char*,struct scsi_ctrl_blk*) ;

__attribute__((used)) static void initio_unlink_pend_scb(struct initio_host * host, struct scsi_ctrl_blk * scb)
{
 struct scsi_ctrl_blk *tmp, *prev;





 prev = tmp = host->first_pending;
 while (tmp != ((void*)0)) {
  if (scb == tmp) {
   if (tmp == host->first_pending) {
    if ((host->first_pending = tmp->next) == ((void*)0))
     host->last_pending = ((void*)0);
   } else {
    prev->next = tmp->next;
    if (tmp == host->last_pending)
     host->last_pending = prev;
   }
   tmp->next = ((void*)0);
   break;
  }
  prev = tmp;
  tmp = tmp->next;
 }
}
