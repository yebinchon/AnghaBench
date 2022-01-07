
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct qedi_endpoint {int sq_mem_size; int sq_pbl_size; scalar_t__ sq_dma; void* sq; void* sq_pbl; scalar_t__ sq_pbl_dma; } ;
struct qedi_ctx {TYPE_1__* pdev; int dbg_ctx; } ;
struct iscsi_wqe {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int QEDI_PAGE_SIZE ;
 int QEDI_SQ_SIZE ;
 int QEDI_WARN (int *,char*) ;
 void* dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int dma_free_coherent (int *,int,void*,scalar_t__) ;

int qedi_alloc_sq(struct qedi_ctx *qedi, struct qedi_endpoint *ep)
{
 int rval = 0;
 u32 *pbl;
 dma_addr_t page;
 int num_pages;

 if (!ep)
  return -EIO;


 ep->sq_mem_size = QEDI_SQ_SIZE * sizeof(struct iscsi_wqe);
 ep->sq_mem_size += QEDI_PAGE_SIZE - 1;

 ep->sq_pbl_size = (ep->sq_mem_size / QEDI_PAGE_SIZE) * sizeof(void *);
 ep->sq_pbl_size = ep->sq_pbl_size + QEDI_PAGE_SIZE;

 ep->sq = dma_alloc_coherent(&qedi->pdev->dev, ep->sq_mem_size,
        &ep->sq_dma, GFP_KERNEL);
 if (!ep->sq) {
  QEDI_WARN(&qedi->dbg_ctx,
     "Could not allocate send queue.\n");
  rval = -ENOMEM;
  goto out;
 }
 ep->sq_pbl = dma_alloc_coherent(&qedi->pdev->dev, ep->sq_pbl_size,
     &ep->sq_pbl_dma, GFP_KERNEL);
 if (!ep->sq_pbl) {
  QEDI_WARN(&qedi->dbg_ctx,
     "Could not allocate send queue PBL.\n");
  rval = -ENOMEM;
  goto out_free_sq;
 }


 num_pages = ep->sq_mem_size / QEDI_PAGE_SIZE;
 page = ep->sq_dma;
 pbl = (u32 *)ep->sq_pbl;

 while (num_pages--) {
  *pbl = (u32)page;
  pbl++;
  *pbl = (u32)((u64)page >> 32);
  pbl++;
  page += QEDI_PAGE_SIZE;
 }

 return rval;

out_free_sq:
 dma_free_coherent(&qedi->pdev->dev, ep->sq_mem_size, ep->sq,
     ep->sq_dma);
out:
 return rval;
}
