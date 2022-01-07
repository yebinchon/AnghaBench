
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int dev; } ;


 int pm_runtime_get_sync (int *) ;

void scsi_autopm_get_target(struct scsi_target *starget)
{
 pm_runtime_get_sync(&starget->dev);
}
