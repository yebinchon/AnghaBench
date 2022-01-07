
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {int work_q; TYPE_1__* hostt; } ;
struct TYPE_2__ {int name; } ;


 int KERN_ERR ;
 int dump_stack () ;
 int flush_workqueue (int ) ;
 int shost_printk (int ,struct Scsi_Host*,char*,int ) ;

void scsi_flush_work(struct Scsi_Host *shost)
{
 if (!shost->work_q) {
  shost_printk(KERN_ERR, shost,
   "ERROR: Scsi host '%s' attempted to flush scsi-work, "
   "when no workqueue created.\n", shost->hostt->name);
  dump_stack();
  return;
 }

 flush_workqueue(shost->work_q);
}
