
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int shost_gendev; } ;


 int put_device (int *) ;

void scsi_host_put(struct Scsi_Host *shost)
{
 put_device(&shost->shost_gendev);
}
