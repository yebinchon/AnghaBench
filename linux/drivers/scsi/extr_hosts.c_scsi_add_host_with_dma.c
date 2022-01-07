
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_host_template {int name; int (* info ) (struct Scsi_Host*) ;} ;
struct device {struct device* parent; } ;
struct Scsi_Host {int host_no; struct device shost_gendev; struct device shost_dev; int * shost_data; scalar_t__ work_q; int work_q_name; TYPE_1__* transportt; struct device* dma_dev; int can_queue; struct scsi_host_template* hostt; } ;
struct TYPE_2__ {scalar_t__ create_work_queue; scalar_t__ host_size; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_INFO ;
 int SHOST_RUNNING ;
 scalar_t__ create_singlethread_workqueue (int ) ;
 int destroy_workqueue (scalar_t__) ;
 int device_add (struct device*) ;
 int device_del (struct device*) ;
 int device_disable_async_suspend (struct device*) ;
 int device_enable_async_suspend (struct device*) ;
 int get_device (struct device*) ;
 int kfree (int *) ;
 int * kzalloc (scalar_t__,int ) ;
 struct device platform_bus ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_suspended (struct device*) ;
 int scsi_autopm_put_host (struct Scsi_Host*) ;
 int scsi_host_set_state (struct Scsi_Host*,int ) ;
 int scsi_init_sense_cache (struct Scsi_Host*) ;
 int scsi_mq_destroy_tags (struct Scsi_Host*) ;
 int scsi_mq_setup_tags (struct Scsi_Host*) ;
 int scsi_proc_host_add (struct Scsi_Host*) ;
 int scsi_sysfs_add_host (struct Scsi_Host*) ;
 int shost_printk (int ,struct Scsi_Host*,char*,...) ;
 int snprintf (int ,int,char*,int) ;
 int stub1 (struct Scsi_Host*) ;

int scsi_add_host_with_dma(struct Scsi_Host *shost, struct device *dev,
      struct device *dma_dev)
{
 struct scsi_host_template *sht = shost->hostt;
 int error = -EINVAL;

 shost_printk(KERN_INFO, shost, "%s\n",
   sht->info ? sht->info(shost) : sht->name);

 if (!shost->can_queue) {
  shost_printk(KERN_ERR, shost,
        "can_queue = 0 no longer supported\n");
  goto fail;
 }

 error = scsi_init_sense_cache(shost);
 if (error)
  goto fail;

 error = scsi_mq_setup_tags(shost);
 if (error)
  goto fail;

 if (!shost->shost_gendev.parent)
  shost->shost_gendev.parent = dev ? dev : &platform_bus;
 if (!dma_dev)
  dma_dev = shost->shost_gendev.parent;

 shost->dma_dev = dma_dev;






 pm_runtime_get_noresume(&shost->shost_gendev);
 pm_runtime_set_active(&shost->shost_gendev);
 pm_runtime_enable(&shost->shost_gendev);
 device_enable_async_suspend(&shost->shost_gendev);

 error = device_add(&shost->shost_gendev);
 if (error)
  goto out_disable_runtime_pm;

 scsi_host_set_state(shost, SHOST_RUNNING);
 get_device(shost->shost_gendev.parent);

 device_enable_async_suspend(&shost->shost_dev);

 error = device_add(&shost->shost_dev);
 if (error)
  goto out_del_gendev;

 get_device(&shost->shost_gendev);

 if (shost->transportt->host_size) {
  shost->shost_data = kzalloc(shost->transportt->host_size,
      GFP_KERNEL);
  if (shost->shost_data == ((void*)0)) {
   error = -ENOMEM;
   goto out_del_dev;
  }
 }

 if (shost->transportt->create_work_queue) {
  snprintf(shost->work_q_name, sizeof(shost->work_q_name),
    "scsi_wq_%d", shost->host_no);
  shost->work_q = create_singlethread_workqueue(
     shost->work_q_name);
  if (!shost->work_q) {
   error = -EINVAL;
   goto out_free_shost_data;
  }
 }

 error = scsi_sysfs_add_host(shost);
 if (error)
  goto out_destroy_host;

 scsi_proc_host_add(shost);
 scsi_autopm_put_host(shost);
 return error;

 out_destroy_host:
 if (shost->work_q)
  destroy_workqueue(shost->work_q);
 out_free_shost_data:
 kfree(shost->shost_data);
 out_del_dev:
 device_del(&shost->shost_dev);
 out_del_gendev:
 device_del(&shost->shost_gendev);
 out_disable_runtime_pm:
 device_disable_async_suspend(&shost->shost_gendev);
 pm_runtime_disable(&shost->shost_gendev);
 pm_runtime_set_suspended(&shost->shost_gendev);
 pm_runtime_put_noidle(&shost->shost_gendev);
 scsi_mq_destroy_tags(shost);
 fail:
 return error;
}
