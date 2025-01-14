
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {int dev; } ;
struct intel_ntb_dev {int peer_addr; int self_mmio; int peer_mmio; TYPE_1__ ntb; } ;


 int DMA_BIT_MASK (int) ;
 int EIO ;
 int NTB_NAME ;
 int dev_warn (int *,char*) ;
 int dma_coerce_mask_and_coherent (int *,int ) ;
 int dma_get_mask (int *) ;
 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_iomap (struct pci_dev*,int ,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct intel_ntb_dev*) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static int intel_ntb_init_pci(struct intel_ntb_dev *ndev, struct pci_dev *pdev)
{
 int rc;

 pci_set_drvdata(pdev, ndev);

 rc = pci_enable_device(pdev);
 if (rc)
  goto err_pci_enable;

 rc = pci_request_regions(pdev, NTB_NAME);
 if (rc)
  goto err_pci_regions;

 pci_set_master(pdev);

 rc = pci_set_dma_mask(pdev, DMA_BIT_MASK(64));
 if (rc) {
  rc = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
  if (rc)
   goto err_dma_mask;
  dev_warn(&pdev->dev, "Cannot DMA highmem\n");
 }

 rc = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
 if (rc) {
  rc = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));
  if (rc)
   goto err_dma_mask;
  dev_warn(&pdev->dev, "Cannot DMA consistent highmem\n");
 }
 rc = dma_coerce_mask_and_coherent(&ndev->ntb.dev,
       dma_get_mask(&pdev->dev));
 if (rc)
  goto err_dma_mask;

 ndev->self_mmio = pci_iomap(pdev, 0, 0);
 if (!ndev->self_mmio) {
  rc = -EIO;
  goto err_mmio;
 }
 ndev->peer_mmio = ndev->self_mmio;
 ndev->peer_addr = pci_resource_start(pdev, 0);

 return 0;

err_mmio:
err_dma_mask:
 pci_clear_master(pdev);
 pci_release_regions(pdev);
err_pci_regions:
 pci_disable_device(pdev);
err_pci_enable:
 pci_set_drvdata(pdev, ((void*)0));
 return rc;
}
