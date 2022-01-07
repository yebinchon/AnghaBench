
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_gendev; } ;


 int pm_runtime_put_sync (int *) ;

void scsi_autopm_put_device(struct scsi_device *sdev)
{
 pm_runtime_put_sync(&sdev->sdev_gendev);
}
