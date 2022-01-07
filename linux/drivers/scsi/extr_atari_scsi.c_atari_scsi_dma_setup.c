
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct NCR5380_hostdata {TYPE_1__* host; } ;
struct TYPE_6__ {int dma_mode_status; unsigned long fdc_acces_seccount; } ;
struct TYPE_5__ {int dma_ctrl; } ;
struct TYPE_4__ {int host_no; } ;


 scalar_t__ IS_A_TT () ;
 int NDEBUG_DMA ;
 int SCSI_DMA_SETADR (unsigned long) ;
 int SCSI_DMA_WRITE_P (int ,unsigned long) ;
 int STRAM_ADDR (unsigned long) ;
 int atari_dma_active ;
 int atari_dma_buffer ;
 void* atari_dma_orig_addr ;
 unsigned long atari_dma_phys_buffer ;
 unsigned long atari_dma_startaddr ;
 int dma_addr ;
 int dma_cache_maintenance (unsigned long,unsigned long,int) ;
 int dma_cnt ;
 int dprintk (int ,char*,int ,void*,unsigned long,unsigned long,int) ;
 int memcpy (int ,void*,unsigned long) ;
 TYPE_3__ st_dma ;
 TYPE_2__ tt_scsi_dma ;
 int udelay (int) ;
 unsigned long virt_to_phys (void*) ;

__attribute__((used)) static unsigned long atari_scsi_dma_setup(struct NCR5380_hostdata *hostdata,
       void *data, unsigned long count,
       int dir)
{
 unsigned long addr = virt_to_phys(data);

 dprintk(NDEBUG_DMA, "scsi%d: setting up dma, data = %p, phys = %lx, count = %ld, dir = %d\n",
         hostdata->host->host_no, data, addr, count, dir);

 if (!IS_A_TT() && !STRAM_ADDR(addr)) {





  if (dir)
   memcpy(atari_dma_buffer, data, count);
  else
   atari_dma_orig_addr = data;
  addr = atari_dma_phys_buffer;
 }

 atari_dma_startaddr = addr;
 dma_cache_maintenance(addr, count, dir);

 if (IS_A_TT()) {
  tt_scsi_dma.dma_ctrl = dir;
  SCSI_DMA_WRITE_P(dma_addr, addr);
  SCSI_DMA_WRITE_P(dma_cnt, count);
  tt_scsi_dma.dma_ctrl = dir | 2;
 } else {


  SCSI_DMA_SETADR(addr);


  dir <<= 8;
  st_dma.dma_mode_status = 0x90 | dir;
  st_dma.dma_mode_status = 0x90 | (dir ^ 0x100);
  st_dma.dma_mode_status = 0x90 | dir;
  udelay(40);


  st_dma.fdc_acces_seccount = (count + (dir ? 511 : 0)) >> 9;
  udelay(40);
  st_dma.dma_mode_status = 0x10 | dir;
  udelay(40);

  atari_dma_active = 1;
 }

 return count;
}
