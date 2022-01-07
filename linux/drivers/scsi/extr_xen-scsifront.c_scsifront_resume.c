
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dev; } ;
struct vscsifrnt_info {struct Scsi_Host* host; } ;
struct Scsi_Host {int host_lock; } ;


 int XenbusStateInitialised ;
 int dev_err (int *,char*,int) ;
 struct vscsifrnt_info* dev_get_drvdata (int *) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsifront_finish_all (struct vscsifrnt_info*) ;
 int scsifront_free_ring (struct vscsifrnt_info*) ;
 int scsifront_init_ring (struct vscsifrnt_info*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int xenbus_switch_state (struct xenbus_device*,int ) ;

__attribute__((used)) static int scsifront_resume(struct xenbus_device *dev)
{
 struct vscsifrnt_info *info = dev_get_drvdata(&dev->dev);
 struct Scsi_Host *host = info->host;
 int err;

 spin_lock_irq(host->host_lock);


 scsifront_finish_all(info);

 spin_unlock_irq(host->host_lock);


 scsifront_free_ring(info);
 err = scsifront_init_ring(info);
 if (err) {
  dev_err(&dev->dev, "fail to resume %d\n", err);
  scsi_host_put(host);
  return err;
 }

 xenbus_switch_state(dev, XenbusStateInitialised);

 return 0;
}
