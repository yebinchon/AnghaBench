
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct csio_sge {int * sge_fl_buf_size; } ;
struct csio_wrm {struct csio_sge sge; } ;
struct TYPE_4__ {int sreg; struct csio_dma_buf* bufs; } ;
struct TYPE_5__ {TYPE_1__ fl; } ;
struct csio_q {int credits; TYPE_2__ un; scalar_t__ vstart; } ;
struct csio_hw {TYPE_3__* pdev; } ;
struct csio_dma_buf {int paddr; int vaddr; int len; } ;
typedef int __be64 ;
struct TYPE_6__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_be64 (int) ;
 int csio_err (struct csio_hw*,char*,int) ;
 struct csio_wrm* csio_hw_to_wrm (struct csio_hw*) ;
 int dma_alloc_coherent (int *,int ,int*,int ) ;

__attribute__((used)) static int
csio_wr_fill_fl(struct csio_hw *hw, struct csio_q *flq)
{
 struct csio_wrm *wrm = csio_hw_to_wrm(hw);
 struct csio_sge *sge = &wrm->sge;
 __be64 *d = (__be64 *)(flq->vstart);
 struct csio_dma_buf *buf = &flq->un.fl.bufs[0];
 uint64_t paddr;
 int sreg = flq->un.fl.sreg;
 int n = flq->credits;

 while (n--) {
  buf->len = sge->sge_fl_buf_size[sreg];
  buf->vaddr = dma_alloc_coherent(&hw->pdev->dev, buf->len,
      &buf->paddr, GFP_KERNEL);
  if (!buf->vaddr) {
   csio_err(hw, "Could only fill %d buffers!\n", n + 1);
   return -ENOMEM;
  }

  paddr = buf->paddr | (sreg & 0xF);

  *d++ = cpu_to_be64(paddr);
  buf++;
 }

 return 0;
}
