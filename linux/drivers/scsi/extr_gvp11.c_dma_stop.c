
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int this_residual; int ptr; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct gvp11_scsiregs {int SP_DMA; int CNTR; } ;
struct WD33C93_hostdata {scalar_t__ dma_buffer_pool; scalar_t__ dma_bounce_len; int * dma_bounce_buffer; scalar_t__ dma_dir; } ;
struct gvp11_hostdata {struct gvp11_scsiregs* regs; struct WD33C93_hostdata wh; } ;
struct Scsi_Host {int dummy; } ;


 scalar_t__ BUF_SCSI_ALLOCED ;
 int GVP11_DMAC_INT_ENABLE ;
 int amiga_chip_free (int *) ;
 int kfree (int *) ;
 int memcpy (int ,int *,int ) ;
 struct gvp11_hostdata* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static void dma_stop(struct Scsi_Host *instance, struct scsi_cmnd *SCpnt,
       int status)
{
 struct gvp11_hostdata *hdata = shost_priv(instance);
 struct WD33C93_hostdata *wh = &hdata->wh;
 struct gvp11_scsiregs *regs = hdata->regs;


 regs->SP_DMA = 1;

 regs->CNTR = GVP11_DMAC_INT_ENABLE;


 if (status && wh->dma_bounce_buffer) {
  if (wh->dma_dir && SCpnt)
   memcpy(SCpnt->SCp.ptr, wh->dma_bounce_buffer,
          SCpnt->SCp.this_residual);

  if (wh->dma_buffer_pool == BUF_SCSI_ALLOCED)
   kfree(wh->dma_bounce_buffer);
  else
   amiga_chip_free(wh->dma_bounce_buffer);

  wh->dma_bounce_buffer = ((void*)0);
  wh->dma_bounce_len = 0;
 }
}
