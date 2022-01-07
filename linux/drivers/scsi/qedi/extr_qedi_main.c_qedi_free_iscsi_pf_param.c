
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedi_glbl_q_params {int dummy; } ;
struct qedi_ctx {int num_queues; int global_queues; int hw_p_cpuq; scalar_t__ p_cpuq; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,size_t,scalar_t__,int ) ;
 int kfree (int ) ;
 int qedi_free_global_queues (struct qedi_ctx*) ;

__attribute__((used)) static void qedi_free_iscsi_pf_param(struct qedi_ctx *qedi)
{
 size_t size = 0;

 if (qedi->p_cpuq) {
  size = qedi->num_queues * sizeof(struct qedi_glbl_q_params);
  dma_free_coherent(&qedi->pdev->dev, size, qedi->p_cpuq,
        qedi->hw_p_cpuq);
 }

 qedi_free_global_queues(qedi);

 kfree(qedi->global_queues);
}
