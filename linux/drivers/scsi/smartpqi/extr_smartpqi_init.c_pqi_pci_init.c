
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_9__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u64 ;
struct pqi_ctrl_registers {int dummy; } ;
struct pqi_ctrl_info {TYPE_1__* pci_dev; TYPE_9__* registers; int * pqi_registers; TYPE_9__* iomem_base; } ;
typedef int dma_addr_t ;
struct TYPE_11__ {int pqi_registers; } ;
struct TYPE_10__ {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int DRIVER_NAME_SHORT ;
 int ENOMEM ;
 int PCI_EXP_COMP_TIMEOUT_65_TO_210_MS ;
 int dev_err (int *,char*) ;
 int dma_set_mask_and_coherent (int *,int ) ;
 TYPE_9__* ioremap_nocache (int ,int) ;
 int pci_disable_device (TYPE_1__*) ;
 int pci_enable_device (TYPE_1__*) ;
 int pci_release_regions (TYPE_1__*) ;
 int pci_request_regions (TYPE_1__*,int ) ;
 int pci_resource_start (TYPE_1__*,int ) ;
 int pci_set_drvdata (TYPE_1__*,struct pqi_ctrl_info*) ;
 int pci_set_master (TYPE_1__*) ;
 int pqi_set_pcie_completion_timeout (TYPE_1__*,int ) ;

__attribute__((used)) static int pqi_pci_init(struct pqi_ctrl_info *ctrl_info)
{
 int rc;
 u64 mask;

 rc = pci_enable_device(ctrl_info->pci_dev);
 if (rc) {
  dev_err(&ctrl_info->pci_dev->dev,
   "failed to enable PCI device\n");
  return rc;
 }

 if (sizeof(dma_addr_t) > 4)
  mask = DMA_BIT_MASK(64);
 else
  mask = DMA_BIT_MASK(32);

 rc = dma_set_mask_and_coherent(&ctrl_info->pci_dev->dev, mask);
 if (rc) {
  dev_err(&ctrl_info->pci_dev->dev, "failed to set DMA mask\n");
  goto disable_device;
 }

 rc = pci_request_regions(ctrl_info->pci_dev, DRIVER_NAME_SHORT);
 if (rc) {
  dev_err(&ctrl_info->pci_dev->dev,
   "failed to obtain PCI resources\n");
  goto disable_device;
 }

 ctrl_info->iomem_base = ioremap_nocache(pci_resource_start(
  ctrl_info->pci_dev, 0),
  sizeof(struct pqi_ctrl_registers));
 if (!ctrl_info->iomem_base) {
  dev_err(&ctrl_info->pci_dev->dev,
   "failed to map memory for controller registers\n");
  rc = -ENOMEM;
  goto release_regions;
 }




 rc = pqi_set_pcie_completion_timeout(ctrl_info->pci_dev,
  0x6);
 if (rc) {
  dev_err(&ctrl_info->pci_dev->dev,
   "failed to set PCIe completion timeout\n");
  goto release_regions;
 }


 pci_set_master(ctrl_info->pci_dev);

 ctrl_info->registers = ctrl_info->iomem_base;
 ctrl_info->pqi_registers = &ctrl_info->registers->pqi_registers;

 pci_set_drvdata(ctrl_info->pci_dev, ctrl_info);

 return 0;

release_regions:
 pci_release_regions(ctrl_info->pci_dev);
disable_device:
 pci_disable_device(ctrl_info->pci_dev);

 return rc;
}
