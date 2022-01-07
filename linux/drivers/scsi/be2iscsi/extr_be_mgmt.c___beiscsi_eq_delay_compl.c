
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ptag_state; } ;
struct beiscsi_hba {TYPE_3__* pcidev; TYPE_2__ ctrl; } ;
struct be_dma_mem {scalar_t__ size; int dma; int va; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {struct be_dma_mem tag_mem_state; } ;


 int __beiscsi_mcc_compl_status (struct beiscsi_hba*,unsigned int,int *,int *) ;
 int dma_free_coherent (int *,scalar_t__,int ,int ) ;

__attribute__((used)) static void __beiscsi_eq_delay_compl(struct beiscsi_hba *phba, unsigned int tag)
{
 struct be_dma_mem *tag_mem;


 __beiscsi_mcc_compl_status(phba, tag, ((void*)0), ((void*)0));
 tag_mem = &phba->ctrl.ptag_state[tag].tag_mem_state;
 if (tag_mem->size) {
  dma_free_coherent(&phba->pcidev->dev, tag_mem->size,
        tag_mem->va, tag_mem->dma);
  tag_mem->size = 0;
 }
}
