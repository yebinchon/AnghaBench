
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pcie_port {scalar_t__ msi_data; int * msi_page; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int PCIE_MSI_ADDR_HI ;
 int PCIE_MSI_ADDR_LO ;
 int __free_page (int *) ;
 int * alloc_page (int ) ;
 int dev_err (struct device*,char*) ;
 scalar_t__ dma_map_page (struct device*,int *,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,scalar_t__) ;
 int dw_pcie_wr_own_conf (struct pcie_port*,int ,int,int ) ;
 int lower_32_bits (scalar_t__) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 int upper_32_bits (scalar_t__) ;

void dw_pcie_msi_init(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct device *dev = pci->dev;
 u64 msi_target;

 pp->msi_page = alloc_page(GFP_KERNEL);
 pp->msi_data = dma_map_page(dev, pp->msi_page, 0, PAGE_SIZE,
        DMA_FROM_DEVICE);
 if (dma_mapping_error(dev, pp->msi_data)) {
  dev_err(dev, "Failed to map MSI data\n");
  __free_page(pp->msi_page);
  pp->msi_page = ((void*)0);
  return;
 }
 msi_target = (u64)pp->msi_data;


 dw_pcie_wr_own_conf(pp, PCIE_MSI_ADDR_LO, 4,
       lower_32_bits(msi_target));
 dw_pcie_wr_own_conf(pp, PCIE_MSI_ADDR_HI, 4,
       upper_32_bits(msi_target));
}
