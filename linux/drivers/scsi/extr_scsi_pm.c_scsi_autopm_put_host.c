
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int shost_gendev; } ;


 int pm_runtime_put_sync (int *) ;

void scsi_autopm_put_host(struct Scsi_Host *shost)
{
 pm_runtime_put_sync(&shost->shost_gendev);
}
