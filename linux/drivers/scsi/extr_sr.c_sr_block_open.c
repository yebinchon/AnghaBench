
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct scsi_cd {int cdi; struct scsi_device* device; } ;
struct block_device {int bd_disk; } ;
typedef int fmode_t ;


 int ENXIO ;
 int cdrom_open (int *,struct block_device*,int ) ;
 int check_disk_change (struct block_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_autopm_get_device (struct scsi_device*) ;
 int scsi_autopm_put_device (struct scsi_device*) ;
 struct scsi_cd* scsi_cd_get (int ) ;
 int scsi_cd_put (struct scsi_cd*) ;
 int sr_mutex ;

__attribute__((used)) static int sr_block_open(struct block_device *bdev, fmode_t mode)
{
 struct scsi_cd *cd;
 struct scsi_device *sdev;
 int ret = -ENXIO;

 cd = scsi_cd_get(bdev->bd_disk);
 if (!cd)
  goto out;

 sdev = cd->device;
 scsi_autopm_get_device(sdev);
 check_disk_change(bdev);

 mutex_lock(&sr_mutex);
 ret = cdrom_open(&cd->cdi, bdev, mode);
 mutex_unlock(&sr_mutex);

 scsi_autopm_put_device(sdev);
 if (ret)
  scsi_cd_put(cd);

out:
 return ret;
}
