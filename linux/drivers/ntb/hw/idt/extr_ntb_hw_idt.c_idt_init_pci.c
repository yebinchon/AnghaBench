
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {int dev; struct pci_dev* pdev; } ;
struct idt_ntb_dev {int cfgspc; TYPE_1__ ntb; } ;


 int DMA_BIT_MASK (int) ;
 int NTB_NAME ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 int dma_coerce_mask_and_coherent (int *,int ) ;
 int dma_get_mask (int *) ;
 int pci_cleanup_aer_uncorrect_error_status (struct pci_dev*) ;
 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 int pci_enable_pcie_error_reporting (struct pci_dev*) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct idt_ntb_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap_regions_request_all (struct pci_dev*,int,int ) ;
 int * pcim_iomap_table (struct pci_dev*) ;

__attribute__((used)) static int idt_init_pci(struct idt_ntb_dev *ndev)
{
 struct pci_dev *pdev = ndev->ntb.pdev;
 int ret;


 ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(64));
 if (ret != 0) {
  ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
  if (ret != 0) {
   dev_err(&pdev->dev, "Failed to set DMA bit mask\n");
   return ret;
  }
  dev_warn(&pdev->dev, "Cannot set DMA highmem bit mask\n");
 }
 ret = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
 if (ret != 0) {
  ret = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));
  if (ret != 0) {
   dev_err(&pdev->dev,
    "Failed to set consistent DMA bit mask\n");
   return ret;
  }
  dev_warn(&pdev->dev,
   "Cannot set consistent DMA highmem bit mask\n");
 }
 ret = dma_coerce_mask_and_coherent(&ndev->ntb.dev,
        dma_get_mask(&pdev->dev));
 if (ret != 0) {
  dev_err(&pdev->dev, "Failed to set NTB device DMA bit mask\n");
  return ret;
 }





 ret = pci_enable_pcie_error_reporting(pdev);
 if (ret != 0)
  dev_warn(&pdev->dev, "PCIe AER capability disabled\n");
 else
  pci_cleanup_aer_uncorrect_error_status(pdev);


 ret = pcim_enable_device(pdev);
 if (ret != 0) {
  dev_err(&pdev->dev, "Failed to enable PCIe device\n");
  goto err_disable_aer;
 }





 pci_set_master(pdev);


 ret = pcim_iomap_regions_request_all(pdev, 1, NTB_NAME);
 if (ret != 0) {
  dev_err(&pdev->dev, "Failed to request resources\n");
  goto err_clear_master;
 }


 ndev->cfgspc = pcim_iomap_table(pdev)[0];


 pci_set_drvdata(pdev, ndev);

 dev_dbg(&pdev->dev, "NT-function PCIe interface initialized");

 return 0;

err_clear_master:
 pci_clear_master(pdev);
err_disable_aer:
 (void)pci_disable_pcie_error_reporting(pdev);

 return ret;
}
