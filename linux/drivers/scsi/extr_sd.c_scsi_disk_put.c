
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int dev; struct scsi_device* device; } ;
struct scsi_device {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int scsi_device_put (struct scsi_device*) ;
 int sd_ref_mutex ;

__attribute__((used)) static void scsi_disk_put(struct scsi_disk *sdkp)
{
 struct scsi_device *sdev = sdkp->device;

 mutex_lock(&sd_ref_mutex);
 put_device(&sdkp->dev);
 scsi_device_put(sdev);
 mutex_unlock(&sd_ref_mutex);
}
