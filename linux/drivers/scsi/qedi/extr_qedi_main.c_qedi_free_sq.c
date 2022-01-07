
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedi_endpoint {int sq_dma; scalar_t__ sq; int sq_mem_size; int sq_pbl_dma; scalar_t__ sq_pbl; int sq_pbl_size; } ;
struct qedi_ctx {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,scalar_t__,int ) ;

void qedi_free_sq(struct qedi_ctx *qedi, struct qedi_endpoint *ep)
{
 if (ep->sq_pbl)
  dma_free_coherent(&qedi->pdev->dev, ep->sq_pbl_size, ep->sq_pbl,
      ep->sq_pbl_dma);
 if (ep->sq)
  dma_free_coherent(&qedi->pdev->dev, ep->sq_mem_size, ep->sq,
      ep->sq_dma);
}
