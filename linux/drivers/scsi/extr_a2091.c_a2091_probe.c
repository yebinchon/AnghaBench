
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * SCMD; int * SASR; } ;
typedef TYPE_3__ wd33c93_regs ;
struct zorro_device_id {int dummy; } ;
struct TYPE_6__ {int start; } ;
struct zorro_dev {TYPE_2__ resource; int slotaddr; } ;
struct a2091_scsiregs {int CNTR; int SCMD; int SASR; int DAWR; } ;
struct TYPE_5__ {int no_sync; int dma_mode; scalar_t__ fast; } ;
struct a2091_hostdata {struct a2091_scsiregs* regs; TYPE_1__ wh; } ;
struct Scsi_Host {int unique_id; int irq; } ;


 int CNTR_INTEN ;
 int CNTR_PDMD ;
 int CTRL_DMA ;
 int DAWR_A2091 ;
 int EBUSY ;
 int ENOMEM ;
 int IRQF_SHARED ;
 int IRQ_AMIGA_PORTS ;
 int WD33C93_FS_8_10 ;
 struct a2091_scsiregs* ZTWO_VADDR (int ) ;
 int a2091_intr ;
 int a2091_scsi_template ;
 int dma_setup ;
 int dma_stop ;
 int free_irq (int ,struct Scsi_Host*) ;
 int release_mem_region (int ,int) ;
 int request_irq (int ,int ,int ,char*,struct Scsi_Host*) ;
 int request_mem_region (int ,int,char*) ;
 int scsi_add_host (struct Scsi_Host*,int *) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_scan_host (struct Scsi_Host*) ;
 struct a2091_hostdata* shost_priv (struct Scsi_Host*) ;
 int wd33c93_init (struct Scsi_Host*,TYPE_3__,int ,int ,int ) ;
 int zorro_set_drvdata (struct zorro_dev*,struct Scsi_Host*) ;

__attribute__((used)) static int a2091_probe(struct zorro_dev *z, const struct zorro_device_id *ent)
{
 struct Scsi_Host *instance;
 int error;
 struct a2091_scsiregs *regs;
 wd33c93_regs wdregs;
 struct a2091_hostdata *hdata;

 if (!request_mem_region(z->resource.start, 256, "wd33c93"))
  return -EBUSY;

 instance = scsi_host_alloc(&a2091_scsi_template,
       sizeof(struct a2091_hostdata));
 if (!instance) {
  error = -ENOMEM;
  goto fail_alloc;
 }

 instance->irq = IRQ_AMIGA_PORTS;
 instance->unique_id = z->slotaddr;

 regs = ZTWO_VADDR(z->resource.start);
 regs->DAWR = DAWR_A2091;

 wdregs.SASR = &regs->SASR;
 wdregs.SCMD = &regs->SCMD;

 hdata = shost_priv(instance);
 hdata->wh.no_sync = 0xff;
 hdata->wh.fast = 0;
 hdata->wh.dma_mode = CTRL_DMA;
 hdata->regs = regs;

 wd33c93_init(instance, wdregs, dma_setup, dma_stop, WD33C93_FS_8_10);
 error = request_irq(IRQ_AMIGA_PORTS, a2091_intr, IRQF_SHARED,
       "A2091 SCSI", instance);
 if (error)
  goto fail_irq;

 regs->CNTR = CNTR_PDMD | CNTR_INTEN;

 error = scsi_add_host(instance, ((void*)0));
 if (error)
  goto fail_host;

 zorro_set_drvdata(z, instance);

 scsi_scan_host(instance);
 return 0;

fail_host:
 free_irq(IRQ_AMIGA_PORTS, instance);
fail_irq:
 scsi_host_put(instance);
fail_alloc:
 release_mem_region(z->resource.start, 256);
 return error;
}
