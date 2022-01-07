
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_hba {int dma_handle; int dma_mem; int dma_size; TYPE_1__* pdev; int ccb; int mmio_base; int work_q; } ;
struct TYPE_2__ {int dev; } ;


 int destroy_workqueue (int ) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int iounmap (int ) ;
 int kfree (int ) ;
 int pci_release_regions (TYPE_1__*) ;
 int stex_free_irq (struct st_hba*) ;

__attribute__((used)) static void stex_hba_free(struct st_hba *hba)
{
 stex_free_irq(hba);

 destroy_workqueue(hba->work_q);

 iounmap(hba->mmio_base);

 pci_release_regions(hba->pdev);

 kfree(hba->ccb);

 dma_free_coherent(&hba->pdev->dev, hba->dma_size,
     hba->dma_mem, hba->dma_handle);
}
