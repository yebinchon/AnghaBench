
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int start; } ;
struct zorro_dev {TYPE_2__ resource; } ;
struct gvp11_hostdata {TYPE_1__* regs; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {scalar_t__ CNTR; } ;


 int IRQ_AMIGA_PORTS ;
 int free_irq (int ,struct Scsi_Host*) ;
 int release_mem_region (int ,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 struct gvp11_hostdata* shost_priv (struct Scsi_Host*) ;
 struct Scsi_Host* zorro_get_drvdata (struct zorro_dev*) ;

__attribute__((used)) static void gvp11_remove(struct zorro_dev *z)
{
 struct Scsi_Host *instance = zorro_get_drvdata(z);
 struct gvp11_hostdata *hdata = shost_priv(instance);

 hdata->regs->CNTR = 0;
 scsi_remove_host(instance);
 free_irq(IRQ_AMIGA_PORTS, instance);
 scsi_host_put(instance);
 release_mem_region(z->resource.start, 256);
}
