
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long dma_lo; int dma_md; int dma_hi; } ;


 int MFPDELAY () ;
 TYPE_1__ st_dma ;

__attribute__((used)) static inline unsigned long SCSI_DMA_GETADR(void)
{
 unsigned long adr;
 adr = st_dma.dma_lo;
 MFPDELAY();
 adr |= (st_dma.dma_md & 0xff) << 8;
 MFPDELAY();
 adr |= (st_dma.dma_hi & 0xff) << 16;
 MFPDELAY();
 return adr;
}
