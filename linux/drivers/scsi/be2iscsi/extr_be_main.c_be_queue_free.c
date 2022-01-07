
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct beiscsi_hba {TYPE_1__* pcidev; } ;
struct be_dma_mem {int * va; int dma; int size; } ;
struct be_queue_info {struct be_dma_mem dma_mem; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void be_queue_free(struct beiscsi_hba *phba, struct be_queue_info *q)
{
 struct be_dma_mem *mem = &q->dma_mem;
 if (mem->va) {
  dma_free_coherent(&phba->pcidev->dev, mem->size,
   mem->va, mem->dma);
  mem->va = ((void*)0);
 }
}
