
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int dev; int device; } ;
struct gendisk {scalar_t__ private_data; } ;


 int get_device (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ scsi_device_get (int ) ;
 struct scsi_disk* scsi_disk (struct gendisk*) ;
 int sd_ref_mutex ;

__attribute__((used)) static struct scsi_disk *scsi_disk_get(struct gendisk *disk)
{
 struct scsi_disk *sdkp = ((void*)0);

 mutex_lock(&sd_ref_mutex);

 if (disk->private_data) {
  sdkp = scsi_disk(disk);
  if (scsi_device_get(sdkp->device) == 0)
   get_device(&sdkp->dev);
  else
   sdkp = ((void*)0);
 }
 mutex_unlock(&sd_ref_mutex);
 return sdkp;
}
