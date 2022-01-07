
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iproc_pcie {scalar_t__ ep_is_internal; struct device* dev; } ;
struct device {int dummy; } ;


 int EFAULT ;
 int ENODEV ;
 int IPROC_PCIE_LINK_STATUS ;
 scalar_t__ IPROC_PCI_EXP_CAP ;
 int PCIE_DL_ACTIVE ;
 int PCIE_PHYLINKUP ;
 scalar_t__ PCI_BRIDGE_CTRL_REG_OFFSET ;
 int PCI_CLASS_BRIDGE_MASK ;
 int PCI_CLASS_BRIDGE_PCI ;
 int PCI_CLASS_BRIDGE_SHIFT ;
 scalar_t__ PCI_EXP_LNKCTL2 ;
 scalar_t__ PCI_EXP_LNKSTA ;
 int PCI_EXP_LNKSTA_NLW ;
 scalar_t__ PCI_HEADER_TYPE ;
 int PCI_HEADER_TYPE_BRIDGE ;
 int PCI_TARGET_LINK_SPEED_GEN1 ;
 int PCI_TARGET_LINK_SPEED_GEN2 ;
 int PCI_TARGET_LINK_SPEED_MASK ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,char*) ;
 int iproc_pci_raw_config_read32 (struct iproc_pcie*,int ,scalar_t__,int,int*) ;
 int iproc_pci_raw_config_write32 (struct iproc_pcie*,int ,scalar_t__,int,int) ;
 int iproc_pcie_read_reg (struct iproc_pcie*,int ) ;
 int msleep (int) ;

__attribute__((used)) static int iproc_pcie_check_link(struct iproc_pcie *pcie)
{
 struct device *dev = pcie->dev;
 u32 hdr_type, link_ctrl, link_status, class, val;
 bool link_is_active = 0;





 if (pcie->ep_is_internal)
  return 0;

 val = iproc_pcie_read_reg(pcie, IPROC_PCIE_LINK_STATUS);
 if (!(val & PCIE_PHYLINKUP) || !(val & PCIE_DL_ACTIVE)) {
  dev_err(dev, "PHY or data link is INACTIVE!\n");
  return -ENODEV;
 }


 iproc_pci_raw_config_read32(pcie, 0, PCI_HEADER_TYPE, 1, &hdr_type);
 if ((hdr_type & 0x7f) != PCI_HEADER_TYPE_BRIDGE) {
  dev_err(dev, "in EP mode, hdr=%#02x\n", hdr_type);
  return -EFAULT;
 }





 iproc_pci_raw_config_read32(pcie, 0, 0x43c,
        4, &class);
 class &= ~0xffff00;
 class |= (PCI_CLASS_BRIDGE_PCI << 8);
 iproc_pci_raw_config_write32(pcie, 0, 0x43c,
         4, class);


 iproc_pci_raw_config_read32(pcie, 0, IPROC_PCI_EXP_CAP + PCI_EXP_LNKSTA,
        2, &link_status);
 if (link_status & PCI_EXP_LNKSTA_NLW)
  link_is_active = 1;

 if (!link_is_active) {




  iproc_pci_raw_config_read32(pcie, 0,
         IPROC_PCI_EXP_CAP + PCI_EXP_LNKCTL2,
         4, &link_ctrl);
  if ((link_ctrl & 0xf) ==
      0x2) {
   link_ctrl &= ~0xf;
   link_ctrl |= 0x1;
   iproc_pci_raw_config_write32(pcie, 0,
     IPROC_PCI_EXP_CAP + PCI_EXP_LNKCTL2,
     4, link_ctrl);
   msleep(100);

   iproc_pci_raw_config_read32(pcie, 0,
     IPROC_PCI_EXP_CAP + PCI_EXP_LNKSTA,
     2, &link_status);
   if (link_status & PCI_EXP_LNKSTA_NLW)
    link_is_active = 1;
  }
 }

 dev_info(dev, "link: %s\n", link_is_active ? "UP" : "DOWN");

 return link_is_active ? 0 : -ENODEV;
}
