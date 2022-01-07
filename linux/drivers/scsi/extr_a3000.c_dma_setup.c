
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int this_residual; int ptr; } ;
struct scsi_cmnd {TYPE_2__ SCp; TYPE_1__* device; } ;
struct a3000_scsiregs {unsigned short CNTR; unsigned long ACR; int ST_DMA; } ;
struct WD33C93_hostdata {int dma_bounce_len; int dma_dir; int dma_bounce_buffer; } ;
struct a3000_hostdata {struct a3000_scsiregs* regs; struct WD33C93_hostdata wh; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;


 unsigned long A3000_XFER_MASK ;
 unsigned short CNTR_DDIR ;
 unsigned short CNTR_INTEN ;
 unsigned short CNTR_PDMD ;
 int GFP_KERNEL ;
 int cache_clear (unsigned long,int ) ;
 int cache_push (unsigned long,int ) ;
 int kmalloc (int,int ) ;
 int mb () ;
 int memcpy (int ,int ,int ) ;
 struct a3000_hostdata* shost_priv (struct Scsi_Host*) ;
 unsigned long virt_to_bus (int ) ;

__attribute__((used)) static int dma_setup(struct scsi_cmnd *cmd, int dir_in)
{
 struct Scsi_Host *instance = cmd->device->host;
 struct a3000_hostdata *hdata = shost_priv(instance);
 struct WD33C93_hostdata *wh = &hdata->wh;
 struct a3000_scsiregs *regs = hdata->regs;
 unsigned short cntr = CNTR_PDMD | CNTR_INTEN;
 unsigned long addr = virt_to_bus(cmd->SCp.ptr);







 if (addr & A3000_XFER_MASK) {
  wh->dma_bounce_len = (cmd->SCp.this_residual + 511) & ~0x1ff;
  wh->dma_bounce_buffer = kmalloc(wh->dma_bounce_len,
      GFP_KERNEL);


  if (!wh->dma_bounce_buffer) {
   wh->dma_bounce_len = 0;
   return 1;
  }

  if (!dir_in) {

   memcpy(wh->dma_bounce_buffer, cmd->SCp.ptr,
          cmd->SCp.this_residual);
  }

  addr = virt_to_bus(wh->dma_bounce_buffer);
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


 mb();
 regs->ST_DMA = 1;
 mb();


 return 0;
}
