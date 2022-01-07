
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int DRV_NAME ;
 int dev_err (int *,char*) ;
 int dma_set_mask_and_coherent (int *,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static int beiscsi_enable_pci(struct pci_dev *pcidev)
{
 int ret;

 ret = pci_enable_device(pcidev);
 if (ret) {
  dev_err(&pcidev->dev,
   "beiscsi_enable_pci - enable device failed\n");
  return ret;
 }

 ret = pci_request_regions(pcidev, DRV_NAME);
 if (ret) {
  dev_err(&pcidev->dev,
    "beiscsi_enable_pci - request region failed\n");
  goto pci_dev_disable;
 }

 pci_set_master(pcidev);
 ret = dma_set_mask_and_coherent(&pcidev->dev, DMA_BIT_MASK(64));
 if (ret) {
  ret = dma_set_mask_and_coherent(&pcidev->dev, DMA_BIT_MASK(32));
  if (ret) {
   dev_err(&pcidev->dev, "Could not set PCI DMA Mask\n");
   goto pci_region_release;
  }
 }
 return 0;

pci_region_release:
 pci_release_regions(pcidev);
pci_dev_disable:
 pci_disable_device(pcidev);

 return ret;
}
