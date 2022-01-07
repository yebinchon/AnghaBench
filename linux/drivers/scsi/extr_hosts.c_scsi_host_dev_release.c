
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {struct device* parent; } ;
struct TYPE_2__ {scalar_t__ tags; } ;
struct Scsi_Host {scalar_t__ shost_state; int host_no; struct Scsi_Host* shost_data; TYPE_1__ tag_set; int shost_dev; scalar_t__ work_q; scalar_t__ ehandler; scalar_t__ tmf_work_q; int hostt; } ;


 scalar_t__ SHOST_CREATED ;
 int destroy_workqueue (scalar_t__) ;
 struct Scsi_Host* dev_name (int *) ;
 struct Scsi_Host* dev_to_shost (struct device*) ;
 int host_index_ida ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct Scsi_Host*) ;
 int kthread_stop (scalar_t__) ;
 int put_device (struct device*) ;
 int rcu_barrier () ;
 int scsi_mq_destroy_tags (struct Scsi_Host*) ;
 int scsi_proc_hostdir_rm (int ) ;

__attribute__((used)) static void scsi_host_dev_release(struct device *dev)
{
 struct Scsi_Host *shost = dev_to_shost(dev);
 struct device *parent = dev->parent;

 scsi_proc_hostdir_rm(shost->hostt);


 rcu_barrier();

 if (shost->tmf_work_q)
  destroy_workqueue(shost->tmf_work_q);
 if (shost->ehandler)
  kthread_stop(shost->ehandler);
 if (shost->work_q)
  destroy_workqueue(shost->work_q);

 if (shost->shost_state == SHOST_CREATED) {







  kfree(dev_name(&shost->shost_dev));
 }

 if (shost->tag_set.tags)
  scsi_mq_destroy_tags(shost);

 kfree(shost->shost_data);

 ida_simple_remove(&host_index_ida, shost->host_no);

 if (parent)
  put_device(parent);
 kfree(shost);
}
