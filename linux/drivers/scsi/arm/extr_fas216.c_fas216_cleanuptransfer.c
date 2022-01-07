
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ fasdmatype_t ;
struct TYPE_10__ {unsigned long phase; unsigned long this_residual; } ;
struct TYPE_11__ {scalar_t__ phase; TYPE_1__ SCp; } ;
struct TYPE_12__ {scalar_t__ transfer_type; } ;
struct TYPE_13__ {TYPE_2__ scsi; TYPE_3__ dma; } ;
typedef TYPE_4__ FAS216_Info ;


 unsigned long CFIS_CF ;
 int LOG_BUFFER ;
 scalar_t__ PHASE_DATAOUT ;
 int REG_CFIS ;
 unsigned long fas216_get_ctc (TYPE_4__*) ;
 int fas216_log (TYPE_4__*,int ,char*,unsigned long,unsigned long,unsigned long) ;
 unsigned long fas216_readb (TYPE_4__*,int ) ;
 int fas216_updateptrs (TYPE_4__*,unsigned long) ;
 scalar_t__ fasdma_none ;
 scalar_t__ fasdma_pio ;
 scalar_t__ fasdma_real_all ;

__attribute__((used)) static void fas216_cleanuptransfer(FAS216_Info *info)
{
 unsigned long total, residual, fifo;
 fasdmatype_t dmatype = info->dma.transfer_type;

 info->dma.transfer_type = fasdma_none;




 if (dmatype == fasdma_pio || dmatype == fasdma_none)
  return;

 if (dmatype == fasdma_real_all)
  total = info->scsi.SCp.phase;
 else
  total = info->scsi.SCp.this_residual;

 residual = fas216_get_ctc(info);

 fifo = fas216_readb(info, REG_CFIS) & CFIS_CF;

 fas216_log(info, LOG_BUFFER, "cleaning up from previous "
     "transfer: length 0x%06x, residual 0x%x, fifo %d",
     total, residual, fifo);







 if (info->scsi.phase == PHASE_DATAOUT)
  residual += fifo;

 fas216_updateptrs(info, total - residual);
}
