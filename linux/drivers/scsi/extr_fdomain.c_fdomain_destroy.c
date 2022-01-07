
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdomain {int work; } ;
struct Scsi_Host {scalar_t__ irq; } ;


 int cancel_work_sync (int *) ;
 int free_irq (scalar_t__,struct fdomain*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 struct fdomain* shost_priv (struct Scsi_Host*) ;

int fdomain_destroy(struct Scsi_Host *sh)
{
 struct fdomain *fd = shost_priv(sh);

 cancel_work_sync(&fd->work);
 scsi_remove_host(sh);
 if (sh->irq)
  free_irq(sh->irq, fd);
 scsi_host_put(sh);
 return 0;
}
