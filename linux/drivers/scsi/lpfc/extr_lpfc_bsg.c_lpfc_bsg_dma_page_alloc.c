
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct lpfc_hba {struct pci_dev* pcidev; } ;
struct lpfc_dmabuf {int virt; int phys; int list; } ;


 int BSG_MBOX_SIZE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kmalloc (int,int ) ;

__attribute__((used)) static struct lpfc_dmabuf *
lpfc_bsg_dma_page_alloc(struct lpfc_hba *phba)
{
 struct lpfc_dmabuf *dmabuf;
 struct pci_dev *pcidev = phba->pcidev;


 dmabuf = kmalloc(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
 if (!dmabuf)
  return ((void*)0);

 INIT_LIST_HEAD(&dmabuf->list);


 dmabuf->virt = dma_alloc_coherent(&pcidev->dev, BSG_MBOX_SIZE,
       &(dmabuf->phys), GFP_KERNEL);

 if (!dmabuf->virt) {
  kfree(dmabuf);
  return ((void*)0);
 }

 return dmabuf;
}
