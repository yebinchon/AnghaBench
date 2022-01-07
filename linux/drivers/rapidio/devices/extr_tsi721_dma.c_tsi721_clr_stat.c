
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct tsi721_bdma_chan {int sts_rdptr; int sts_size; scalar_t__ regs; scalar_t__* sts_base; } ;


 scalar_t__ TSI721_DMAC_DSRP ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void tsi721_clr_stat(struct tsi721_bdma_chan *bdma_chan)
{
 u32 srd_ptr;
 u64 *sts_ptr;
 int i, j;


 srd_ptr = bdma_chan->sts_rdptr;
 sts_ptr = bdma_chan->sts_base;
 j = srd_ptr * 8;
 while (sts_ptr[j]) {
  for (i = 0; i < 8 && sts_ptr[j]; i++, j++)
   sts_ptr[j] = 0;

  ++srd_ptr;
  srd_ptr %= bdma_chan->sts_size;
  j = srd_ptr * 8;
 }

 iowrite32(srd_ptr, bdma_chan->regs + TSI721_DMAC_DSRP);
 bdma_chan->sts_rdptr = srd_ptr;
}
