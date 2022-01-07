
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mvumi_hba {TYPE_1__* pdev; int regs; int handshake_page_phys; int handshake_page; int base_addr; } ;
struct TYPE_3__ {int dev; } ;


 int HSP_MAX_SIZE ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int kfree (int ) ;
 int mvumi_free_cmds (struct mvumi_hba*) ;
 int mvumi_release_mem_resource (struct mvumi_hba*) ;
 int mvumi_unmap_pci_addr (TYPE_1__*,int ) ;
 int pci_release_regions (TYPE_1__*) ;

__attribute__((used)) static void mvumi_release_fw(struct mvumi_hba *mhba)
{
 mvumi_free_cmds(mhba);
 mvumi_release_mem_resource(mhba);
 mvumi_unmap_pci_addr(mhba->pdev, mhba->base_addr);
 dma_free_coherent(&mhba->pdev->dev, HSP_MAX_SIZE,
  mhba->handshake_page, mhba->handshake_page_phys);
 kfree(mhba->regs);
 pci_release_regions(mhba->pdev);
}
