
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int SUCCESS ;
 int aha152x_bus_reset_host (struct Scsi_Host*) ;
 int reset_ports (struct Scsi_Host*) ;

int aha152x_host_reset_host(struct Scsi_Host *shpnt)
{
 aha152x_bus_reset_host(shpnt);
 reset_ports(shpnt);

 return SUCCESS;
}
