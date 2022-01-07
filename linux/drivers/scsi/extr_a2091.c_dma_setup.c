
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int this_residual; int * ptr; } ;
struct scsi_cmnd {TYPE_2__ SCp; TYPE_1__* device; } ;
struct a2091_scsiregs {unsigned short CNTR; unsigned long ACR; int ST_DMA; } ;
struct WD33C93_hostdata {int dma_bounce_len; int dma_dir; int * dma_bounce_buffer; } ;
struct a2091_hostdata {struct a2091_scsiregs* regs; struct WD33C93_hostdata wh; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;


 unsigned long A2091_XFER_MASK ;
 unsigned short CNTR_DDIR ;
 unsigned short CNTR_INTEN ;
 unsigned short CNTR_PDMD ;
 int GFP_KERNEL ;
 int cache_clear (unsigned long,int ) ;
 int cache_push (unsigned long,int ) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,int *,int ) ;
 struct a2091_hostdata* shost_priv (struct Scsi_Host*) ;
 unsigned long virt_to_bus (int *) ;

__attribute__((used)) static int dma_setup(struct scsi_cmnd *cmd, int dir_in)
{
 struct Scsi_Host *instance = cmd->device->host;
 struct a2091_hostdata *hdata = shost_priv(instance);
 struct WD33C93_hostdata *wh = &hdata->wh;
 struct a2091_scsiregs *regs = hdata->regs;
 unsigned short cntr = CNTR_PDMD | CNTR_INTEN;
 unsigned long addr = virt_to_bus(cmd->SCp.ptr);


 if (addr & A2091_XFER_MASK) {
  wh->dma_bounce_len = (cmd->SCp.this_residual + 511) & ~0x1ff;
  wh->dma_bounce_buffer = kmalloc(wh->dma_bounce_len,
      GFP_KERNEL);


  if (!wh->dma_bounce_buffer) {
   wh->dma_bounce_len = 0;
   return 1;
  }


  addr = virt_to_bus(wh->dma_bounce_buffer);


  if (addr & A2091_XFER_MASK) {

   kfree(wh->dma_bounce_buffer);
   wh->dma_bounce_buffer = ((void*)0);
   wh->dma_bounce_len = 0;
   return 1;
  }

  if (!dir_in) {

   memcpy(wh->dma_bounce_buffer, cmd->SCp.ptr,
          cmd->SCp.this_residual);
  }
 }


 if (!dir_in)
  cntr |= CNTR_DDIR;


 wh->dma_dir = dir_in;

 regs->CNTR = cntr;


 regs->ACR = addr;

 if (dir_in) {

  cache_clear(addr, cmd->SCp.this_residual);
 } else {

  cache_push(addr, cmd->SCp.this_residual);
 }

 regs->ST_DMA = 1;


 return 0;
}
