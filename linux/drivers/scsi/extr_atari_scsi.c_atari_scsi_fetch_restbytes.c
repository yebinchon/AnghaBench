
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_restdata; } ;


 int NDEBUG_DMA ;
 unsigned long SCSI_DMA_READ_P (int ) ;
 int dma_addr ;
 int dprintk (int ,char*,...) ;
 char* phys_to_virt (unsigned long) ;
 TYPE_1__ tt_scsi_dma ;

__attribute__((used)) static void atari_scsi_fetch_restbytes(void)
{
 int nr;
 char *src, *dst;
 unsigned long phys_dst;


 phys_dst = SCSI_DMA_READ_P(dma_addr);
 nr = phys_dst & 3;
 if (nr) {


  phys_dst ^= nr;
  dprintk(NDEBUG_DMA, "SCSI DMA: there are %d rest bytes for phys addr 0x%08lx",
      nr, phys_dst);

  dst = phys_to_virt(phys_dst);
  dprintk(NDEBUG_DMA, " = virt addr %p\n", dst);
  for (src = (char *)&tt_scsi_dma.dma_restdata; nr != 0; --nr)
   *dst++ = *src++;
 }
}
