
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int dev; int opal_dev; int disk; int device; } ;
struct device {int dummy; } ;
typedef int dev_t ;


 int SD_MINORS ;
 int async_synchronize_full_domain (int *) ;
 int blk_register_region (int ,int ,int *,int ,int *,int *) ;
 int del_gendisk (int ) ;
 struct scsi_disk* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int device_del (int *) ;
 int disk_devt (int ) ;
 int free_opal_dev (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int scsi_autopm_get_device (int ) ;
 int scsi_sd_pm_domain ;
 int sd_default_probe ;
 int sd_ref_mutex ;
 int sd_shutdown (struct device*) ;

__attribute__((used)) static int sd_remove(struct device *dev)
{
 struct scsi_disk *sdkp;
 dev_t devt;

 sdkp = dev_get_drvdata(dev);
 devt = disk_devt(sdkp->disk);
 scsi_autopm_get_device(sdkp->device);

 async_synchronize_full_domain(&scsi_sd_pm_domain);
 device_del(&sdkp->dev);
 del_gendisk(sdkp->disk);
 sd_shutdown(dev);

 free_opal_dev(sdkp->opal_dev);

 blk_register_region(devt, SD_MINORS, ((void*)0),
       sd_default_probe, ((void*)0), ((void*)0));

 mutex_lock(&sd_ref_mutex);
 dev_set_drvdata(dev, ((void*)0));
 put_device(&sdkp->dev);
 mutex_unlock(&sd_ref_mutex);

 return 0;
}
