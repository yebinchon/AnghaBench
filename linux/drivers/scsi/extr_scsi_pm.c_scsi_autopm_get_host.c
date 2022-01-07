
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int shost_gendev; } ;


 int EACCES ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;

int scsi_autopm_get_host(struct Scsi_Host *shost)
{
 int err;

 err = pm_runtime_get_sync(&shost->shost_gendev);
 if (err < 0 && err !=-EACCES)
  pm_runtime_put_sync(&shost->shost_gendev);
 else
  err = 0;
 return err;
}
