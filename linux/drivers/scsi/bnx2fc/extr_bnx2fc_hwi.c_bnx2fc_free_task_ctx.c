
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2fc_hba {int max_tasks; int ** task_ctx_dma; int ** task_ctx; TYPE_1__* pcidev; int * task_ctx_bd_tbl; int * task_ctx_bd_dma; } ;
struct TYPE_2__ {int dev; } ;


 int BNX2FC_TASKS_PER_PAGE ;
 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int *,int *) ;
 int kfree (int **) ;

void bnx2fc_free_task_ctx(struct bnx2fc_hba *hba)
{
 int task_ctx_arr_sz;
 int i;

 if (hba->task_ctx_bd_tbl) {
  dma_free_coherent(&hba->pcidev->dev, PAGE_SIZE,
        hba->task_ctx_bd_tbl,
        hba->task_ctx_bd_dma);
  hba->task_ctx_bd_tbl = ((void*)0);
 }

 task_ctx_arr_sz = (hba->max_tasks / BNX2FC_TASKS_PER_PAGE);
 if (hba->task_ctx) {
  for (i = 0; i < task_ctx_arr_sz; i++) {
   if (hba->task_ctx[i]) {
    dma_free_coherent(&hba->pcidev->dev, PAGE_SIZE,
          hba->task_ctx[i],
          hba->task_ctx_dma[i]);
    hba->task_ctx[i] = ((void*)0);
   }
  }
  kfree(hba->task_ctx);
  hba->task_ctx = ((void*)0);
 }

 kfree(hba->task_ctx_dma);
 hba->task_ctx_dma = ((void*)0);
}
