
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {scalar_t__ io_port; scalar_t__ irq; } ;
struct TYPE_2__ {int host_list; scalar_t__ pnpdev; } ;


 TYPE_1__* HOSTDATA (struct Scsi_Host*) ;
 int IO_RANGE ;
 int free_irq (scalar_t__,struct Scsi_Host*) ;
 int list_del (int *) ;
 int pnp_device_detach (scalar_t__) ;
 int release_region (scalar_t__,int ) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;

void aha152x_release(struct Scsi_Host *shpnt)
{
 if (!shpnt)
  return;

 scsi_remove_host(shpnt);
 if (shpnt->irq)
  free_irq(shpnt->irq, shpnt);


 if (shpnt->io_port)
  release_region(shpnt->io_port, IO_RANGE);







 list_del(&HOSTDATA(shpnt)->host_list);
 scsi_host_put(shpnt);
}
