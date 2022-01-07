
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u16 ;
struct iproc_pcie {scalar_t__ base; struct device* dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int IPROC_PCIE_OARR0 ;
 int IPROC_PCIE_OMAP0 ;
 int MAP_REG (int ,int) ;
 int OARR_SIZE_CFG_SHIFT ;
 int OARR_VALID ;
 int dev_dbg (struct device*,char*,int,int ,...) ;
 scalar_t__ iproc_pcie_reg_is_invalid (scalar_t__) ;
 scalar_t__ iproc_pcie_reg_offset (struct iproc_pcie*,int ) ;
 int lower_32_bits (int ) ;
 int readl (scalar_t__) ;
 int upper_32_bits (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline int iproc_pcie_ob_write(struct iproc_pcie *pcie, int window_idx,
          int size_idx, u64 axi_addr, u64 pci_addr)
{
 struct device *dev = pcie->dev;
 u16 oarr_offset, omap_offset;





 oarr_offset = iproc_pcie_reg_offset(pcie, MAP_REG(IPROC_PCIE_OARR0,
         window_idx));
 omap_offset = iproc_pcie_reg_offset(pcie, MAP_REG(IPROC_PCIE_OMAP0,
         window_idx));
 if (iproc_pcie_reg_is_invalid(oarr_offset) ||
     iproc_pcie_reg_is_invalid(omap_offset))
  return -EINVAL;





 writel(lower_32_bits(axi_addr) | (size_idx << OARR_SIZE_CFG_SHIFT) |
        OARR_VALID, pcie->base + oarr_offset);
 writel(upper_32_bits(axi_addr), pcie->base + oarr_offset + 4);


 writel(lower_32_bits(pci_addr), pcie->base + omap_offset);
 writel(upper_32_bits(pci_addr), pcie->base + omap_offset + 4);

 dev_dbg(dev, "ob window [%d]: offset 0x%x axi %pap pci %pap\n",
  window_idx, oarr_offset, &axi_addr, &pci_addr);
 dev_dbg(dev, "oarr lo 0x%x oarr hi 0x%x\n",
  readl(pcie->base + oarr_offset),
  readl(pcie->base + oarr_offset + 4));
 dev_dbg(dev, "omap lo 0x%x omap hi 0x%x\n",
  readl(pcie->base + omap_offset),
  readl(pcie->base + omap_offset + 4));

 return 0;
}
