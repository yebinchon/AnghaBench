
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int shost_gendev; int shost_dev; int host_lock; int scan_mutex; int tmf_work_q; } ;


 int BUG_ON (scalar_t__) ;
 int SHOST_CANCEL ;
 int SHOST_CANCEL_RECOVERY ;
 int SHOST_DEL ;
 int SHOST_DEL_RECOVERY ;
 int device_del (int *) ;
 int device_unregister (int *) ;
 int flush_workqueue (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_autopm_get_host (struct Scsi_Host*) ;
 int scsi_forget_host (struct Scsi_Host*) ;
 scalar_t__ scsi_host_set_state (struct Scsi_Host*,int ) ;
 int scsi_proc_host_rm (struct Scsi_Host*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int transport_unregister_device (int *) ;

void scsi_remove_host(struct Scsi_Host *shost)
{
 unsigned long flags;

 mutex_lock(&shost->scan_mutex);
 spin_lock_irqsave(shost->host_lock, flags);
 if (scsi_host_set_state(shost, SHOST_CANCEL))
  if (scsi_host_set_state(shost, SHOST_CANCEL_RECOVERY)) {
   spin_unlock_irqrestore(shost->host_lock, flags);
   mutex_unlock(&shost->scan_mutex);
   return;
  }
 spin_unlock_irqrestore(shost->host_lock, flags);

 scsi_autopm_get_host(shost);
 flush_workqueue(shost->tmf_work_q);
 scsi_forget_host(shost);
 mutex_unlock(&shost->scan_mutex);
 scsi_proc_host_rm(shost);

 spin_lock_irqsave(shost->host_lock, flags);
 if (scsi_host_set_state(shost, SHOST_DEL))
  BUG_ON(scsi_host_set_state(shost, SHOST_DEL_RECOVERY));
 spin_unlock_irqrestore(shost->host_lock, flags);

 transport_unregister_device(&shost->shost_gendev);
 device_unregister(&shost->shost_dev);
 device_del(&shost->shost_gendev);
}
