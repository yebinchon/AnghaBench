
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedf_glbl_q_params {int dummy; } ;
struct qedf_ctx {int num_queues; int global_queues; int hw_p_cpuq; scalar_t__ p_cpuq; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,size_t,scalar_t__,int ) ;
 int kfree (int ) ;
 int qedf_free_global_queues (struct qedf_ctx*) ;

__attribute__((used)) static void qedf_free_fcoe_pf_param(struct qedf_ctx *qedf)
{
 size_t size = 0;

 if (qedf->p_cpuq) {
  size = qedf->num_queues * sizeof(struct qedf_glbl_q_params);
  dma_free_coherent(&qedf->pdev->dev, size, qedf->p_cpuq,
      qedf->hw_p_cpuq);
 }

 qedf_free_global_queues(qedf);

 kfree(qedf->global_queues);
}
