
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int host_busy; } ;


 int atomic_read (int *) ;

int scsi_host_busy(struct Scsi_Host *shost)
{
 return atomic_read(&shost->host_busy);
}
