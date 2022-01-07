
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int * work_q; } ;


 int destroy_workqueue (int *) ;
 int scsi_remove_host (struct Scsi_Host*) ;

__attribute__((used)) static void
snic_del_host(struct Scsi_Host *shost)
{
 if (!shost->work_q)
  return;

 destroy_workqueue(shost->work_q);
 shost->work_q = ((void*)0);
 scsi_remove_host(shost);
}
