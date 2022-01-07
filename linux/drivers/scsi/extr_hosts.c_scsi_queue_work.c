
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct Scsi_Host {int work_q; TYPE_1__* hostt; } ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;
 int KERN_ERR ;
 int dump_stack () ;
 int queue_work (int ,struct work_struct*) ;
 int shost_printk (int ,struct Scsi_Host*,char*,int ) ;
 scalar_t__ unlikely (int) ;

int scsi_queue_work(struct Scsi_Host *shost, struct work_struct *work)
{
 if (unlikely(!shost->work_q)) {
  shost_printk(KERN_ERR, shost,
   "ERROR: Scsi host '%s' attempted to queue scsi-work, "
   "when no workqueue created.\n", shost->hostt->name);
  dump_stack();

  return -EINVAL;
 }

 return queue_work(shost->work_q, work);
}
