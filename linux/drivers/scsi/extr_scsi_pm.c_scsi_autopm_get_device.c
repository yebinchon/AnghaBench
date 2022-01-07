
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_gendev; } ;


 int EACCES ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;

int scsi_autopm_get_device(struct scsi_device *sdev)
{
 int err;

 err = pm_runtime_get_sync(&sdev->sdev_gendev);
 if (err < 0 && err !=-EACCES)
  pm_runtime_put_sync(&sdev->sdev_gendev);
 else
  err = 0;
 return err;
}
