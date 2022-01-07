
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedf_ctx {int num_queues; TYPE_1__* pdev; struct global_queue** global_queues; } ;
struct global_queue {int cq_pbl_dma; scalar_t__ cq_pbl; int cq_pbl_size; int cq_dma; scalar_t__ cq; int cq_mem_size; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int kfree (struct global_queue*) ;
 int qedf_free_bdq (struct qedf_ctx*) ;

__attribute__((used)) static void qedf_free_global_queues(struct qedf_ctx *qedf)
{
 int i;
 struct global_queue **gl = qedf->global_queues;

 for (i = 0; i < qedf->num_queues; i++) {
  if (!gl[i])
   continue;

  if (gl[i]->cq)
   dma_free_coherent(&qedf->pdev->dev,
       gl[i]->cq_mem_size, gl[i]->cq, gl[i]->cq_dma);
  if (gl[i]->cq_pbl)
   dma_free_coherent(&qedf->pdev->dev, gl[i]->cq_pbl_size,
       gl[i]->cq_pbl, gl[i]->cq_pbl_dma);

  kfree(gl[i]);
 }

 qedf_free_bdq(qedf);
}
