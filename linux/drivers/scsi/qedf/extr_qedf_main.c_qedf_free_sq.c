
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedf_rport {int sq_dma; scalar_t__ sq; int sq_mem_size; int sq_pbl_dma; scalar_t__ sq_pbl; int sq_pbl_size; } ;
struct qedf_ctx {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,scalar_t__,int ) ;

__attribute__((used)) static void qedf_free_sq(struct qedf_ctx *qedf, struct qedf_rport *fcport)
{
 if (fcport->sq_pbl)
  dma_free_coherent(&qedf->pdev->dev, fcport->sq_pbl_size,
      fcport->sq_pbl, fcport->sq_pbl_dma);
 if (fcport->sq)
  dma_free_coherent(&qedf->pdev->dev, fcport->sq_mem_size,
      fcport->sq, fcport->sq_dma);
}
