
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * SCMD; int * SASR; } ;
typedef TYPE_3__ wd33c93_regs ;
struct zorro_device_id {unsigned int driver_data; } ;
struct TYPE_5__ {unsigned long start; } ;
struct zorro_dev {int slotaddr; TYPE_1__ resource; } ;
struct gvp11_scsiregs {int secret2; int secret3; int CNTR; int SCMD; int SASR; scalar_t__ BANK; scalar_t__ secret1; } ;
struct TYPE_6__ {unsigned int dma_xfer_mask; int no_sync; int dma_mode; scalar_t__ fast; } ;
struct gvp11_hostdata {struct gvp11_scsiregs* regs; TYPE_2__ wh; } ;
struct Scsi_Host {int unique_id; int irq; } ;


 int CTRL_DMA ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GVP11_DMAC_BUSY ;
 int GVP11_DMAC_INT_ENABLE ;
 unsigned int GVP_SCSICLKMASK ;
 int IRQF_SHARED ;
 int IRQ_AMIGA_PORTS ;
 int WD33C93_FS_12_15 ;
 int WD33C93_FS_8_10 ;
 struct gvp11_scsiregs* ZTWO_VADDR (unsigned long) ;
 int check_wd33c93 (struct gvp11_scsiregs*) ;
 int dma_setup ;
 int dma_stop ;
 int free_irq (int ,struct Scsi_Host*) ;
 int gvp11_intr ;
 int gvp11_scsi_template ;
 unsigned int gvp11_xfer_mask ;
 int release_mem_region (unsigned long,int) ;
 int request_irq (int ,int ,int ,char*,struct Scsi_Host*) ;
 int request_mem_region (unsigned long,int,char*) ;
 int scsi_add_host (struct Scsi_Host*,int *) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_scan_host (struct Scsi_Host*) ;
 struct gvp11_hostdata* shost_priv (struct Scsi_Host*) ;
 int wd33c93_init (struct Scsi_Host*,TYPE_3__,int ,int ,int ) ;
 int zorro_resource_len (struct zorro_dev*) ;
 int zorro_set_drvdata (struct zorro_dev*,struct Scsi_Host*) ;

__attribute__((used)) static int gvp11_probe(struct zorro_dev *z, const struct zorro_device_id *ent)
{
 struct Scsi_Host *instance;
 unsigned long address;
 int error;
 unsigned int epc;
 unsigned int default_dma_xfer_mask;
 struct gvp11_hostdata *hdata;
 struct gvp11_scsiregs *regs;
 wd33c93_regs wdregs;

 default_dma_xfer_mask = ent->driver_data;






 if (zorro_resource_len(z) != 0x10000)
  return -ENODEV;

 address = z->resource.start;
 if (!request_mem_region(address, 256, "wd33c93"))
  return -EBUSY;

 regs = ZTWO_VADDR(address);

 error = check_wd33c93(regs);
 if (error)
  goto fail_check_or_alloc;

 instance = scsi_host_alloc(&gvp11_scsi_template,
       sizeof(struct gvp11_hostdata));
 if (!instance) {
  error = -ENOMEM;
  goto fail_check_or_alloc;
 }

 instance->irq = IRQ_AMIGA_PORTS;
 instance->unique_id = z->slotaddr;

 regs->secret2 = 1;
 regs->secret1 = 0;
 regs->secret3 = 15;
 while (regs->CNTR & GVP11_DMAC_BUSY)
  ;
 regs->CNTR = 0;
 regs->BANK = 0;

 wdregs.SASR = &regs->SASR;
 wdregs.SCMD = &regs->SCMD;

 hdata = shost_priv(instance);
 if (gvp11_xfer_mask)
  hdata->wh.dma_xfer_mask = gvp11_xfer_mask;
 else
  hdata->wh.dma_xfer_mask = default_dma_xfer_mask;

 hdata->wh.no_sync = 0xff;
 hdata->wh.fast = 0;
 hdata->wh.dma_mode = CTRL_DMA;
 hdata->regs = regs;




 epc = *(unsigned short *)(ZTWO_VADDR(address) + 0x8000);
 wd33c93_init(instance, wdregs, dma_setup, dma_stop,
       (epc & GVP_SCSICLKMASK) ? WD33C93_FS_8_10
          : WD33C93_FS_12_15);

 error = request_irq(IRQ_AMIGA_PORTS, gvp11_intr, IRQF_SHARED,
       "GVP11 SCSI", instance);
 if (error)
  goto fail_irq;

 regs->CNTR = GVP11_DMAC_INT_ENABLE;

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
fail_check_or_alloc:
 release_mem_region(address, 256);
 return error;
}
