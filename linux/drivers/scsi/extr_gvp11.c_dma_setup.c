
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int this_residual; void* ptr; } ;
struct scsi_cmnd {TYPE_2__ SCp; TYPE_1__* device; } ;
struct gvp11_scsiregs {unsigned short CNTR; unsigned long ACR; int BANK; int ST_DMA; } ;
struct WD33C93_hostdata {unsigned long dma_xfer_mask; int dma_bounce_len; scalar_t__ dma_buffer_pool; int dma_dir; void* dma_bounce_buffer; } ;
struct gvp11_hostdata {struct gvp11_scsiregs* regs; struct WD33C93_hostdata wh; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;


 void* BUF_CHIP_ALLOCED ;
 scalar_t__ BUF_SCSI_ALLOCED ;
 int GFP_KERNEL ;
 unsigned short GVP11_DMAC_DIR_WRITE ;
 unsigned short GVP11_DMAC_INT_ENABLE ;
 void* amiga_chip_alloc (int,char*) ;
 int amiga_chip_free (void*) ;
 int cache_clear (unsigned long,int ) ;
 int cache_push (unsigned long,int ) ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,void*,int ) ;
 struct gvp11_hostdata* shost_priv (struct Scsi_Host*) ;
 unsigned long virt_to_bus (void*) ;

__attribute__((used)) static int dma_setup(struct scsi_cmnd *cmd, int dir_in)
{
 struct Scsi_Host *instance = cmd->device->host;
 struct gvp11_hostdata *hdata = shost_priv(instance);
 struct WD33C93_hostdata *wh = &hdata->wh;
 struct gvp11_scsiregs *regs = hdata->regs;
 unsigned short cntr = GVP11_DMAC_INT_ENABLE;
 unsigned long addr = virt_to_bus(cmd->SCp.ptr);
 int bank_mask;
 static int scsi_alloc_out_of_range = 0;


 if (addr & wh->dma_xfer_mask) {
  wh->dma_bounce_len = (cmd->SCp.this_residual + 511) & ~0x1ff;

  if (!scsi_alloc_out_of_range) {
   wh->dma_bounce_buffer =
    kmalloc(wh->dma_bounce_len, GFP_KERNEL);
   wh->dma_buffer_pool = BUF_SCSI_ALLOCED;
  }

  if (scsi_alloc_out_of_range ||
      !wh->dma_bounce_buffer) {
   wh->dma_bounce_buffer =
    amiga_chip_alloc(wh->dma_bounce_len,
       "GVP II SCSI Bounce Buffer");

   if (!wh->dma_bounce_buffer) {
    wh->dma_bounce_len = 0;
    return 1;
   }

   wh->dma_buffer_pool = BUF_CHIP_ALLOCED;
  }


  addr = virt_to_bus(wh->dma_bounce_buffer);

  if (addr & wh->dma_xfer_mask) {

   if (wh->dma_buffer_pool == BUF_SCSI_ALLOCED) {
    kfree(wh->dma_bounce_buffer);
    scsi_alloc_out_of_range = 1;
   } else {
    amiga_chip_free(wh->dma_bounce_buffer);
   }

   wh->dma_bounce_buffer =
    amiga_chip_alloc(wh->dma_bounce_len,
       "GVP II SCSI Bounce Buffer");

   if (!wh->dma_bounce_buffer) {
    wh->dma_bounce_len = 0;
    return 1;
   }

   addr = virt_to_bus(wh->dma_bounce_buffer);
   wh->dma_buffer_pool = BUF_CHIP_ALLOCED;
  }

  if (!dir_in) {

   memcpy(wh->dma_bounce_buffer, cmd->SCp.ptr,
          cmd->SCp.this_residual);
  }
 }


 if (!dir_in)
  cntr |= GVP11_DMAC_DIR_WRITE;

 wh->dma_dir = dir_in;
 regs->CNTR = cntr;


 regs->ACR = addr;

 if (dir_in) {

  cache_clear(addr, cmd->SCp.this_residual);
 } else {

  cache_push(addr, cmd->SCp.this_residual);
 }

 bank_mask = (~wh->dma_xfer_mask >> 18) & 0x01c0;
 if (bank_mask)
  regs->BANK = bank_mask & (addr >> 18);


 regs->ST_DMA = 1;


 return 0;
}
