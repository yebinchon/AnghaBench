
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dev; } ;
struct vscsifrnt_info {int pause; int waiting_pause; int wq_pause; int wq_sync; scalar_t__ wait_ring_available; scalar_t__ callers; struct Scsi_Host* host; } ;
struct Scsi_Host {int host_lock; } ;


 struct vscsifrnt_info* dev_get_drvdata (int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int wait_event_interruptible (int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int scsifront_suspend(struct xenbus_device *dev)
{
 struct vscsifrnt_info *info = dev_get_drvdata(&dev->dev);
 struct Scsi_Host *host = info->host;
 int err = 0;


 spin_lock_irq(host->host_lock);
 info->pause = 1;
 while (info->callers && !err) {
  info->waiting_pause = 1;
  info->wait_ring_available = 0;
  spin_unlock_irq(host->host_lock);
  wake_up(&info->wq_sync);
  err = wait_event_interruptible(info->wq_pause,
            !info->waiting_pause);
  spin_lock_irq(host->host_lock);
 }
 spin_unlock_irq(host->host_lock);
 return err;
}
