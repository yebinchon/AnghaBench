
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;
struct nwl_pcie {int ecam_value; int last_busno; int irq_misc; scalar_t__ ecam_base; int phys_ecam_base; int phys_breg_base; struct device* dev; } ;
struct device {int dummy; } ;


 int BRCFG_INTERRUPT ;
 int BRCFG_INTERRUPT_MASK ;
 int BRCFG_PCIE_RX0 ;
 int BRCFG_PCIE_RX_MSG_FILTER ;
 int BREG_ENABLE ;
 int BREG_ENABLE_FORCE ;
 int BREG_PRESENT ;
 int CFG_DMA_REG_BAR ;
 int CFG_ENABLE_MSG_FILTER_MASK ;
 int EINVAL ;
 int E_BREG_BASE_HI ;
 int E_BREG_BASE_LO ;
 int E_BREG_CAPABILITIES ;
 int E_BREG_CONTROL ;
 int E_ECAM_BASE_HI ;
 int E_ECAM_BASE_LO ;
 int E_ECAM_CAPABILITIES ;
 int E_ECAM_CONTROL ;
 int E_ECAM_CR_ENABLE ;
 int E_ECAM_PRESENT ;
 int E_ECAM_SIZE_LOC ;
 int E_ECAM_SIZE_SHIFT ;
 int IRQF_SHARED ;
 int I_ISUB_CONTROL ;
 int MSGF_LEG_MASK ;
 int MSGF_LEG_SR_MASKALL ;
 int MSGF_LEG_STATUS ;
 int MSGF_MISC_MASK ;
 int MSGF_MISC_SR_MASKALL ;
 int MSGF_MISC_STATUS ;
 scalar_t__ PCI_PRIMARY_BUS ;
 int SET_ISUB_CONTROL ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int devm_request_irq (struct device*,int ,int ,int ,char*,struct nwl_pcie*) ;
 int lower_32_bits (int ) ;
 int nwl_bridge_readl (struct nwl_pcie*,int ) ;
 int nwl_bridge_writel (struct nwl_pcie*,int,int ) ;
 scalar_t__ nwl_pcie_link_up (struct nwl_pcie*) ;
 int nwl_pcie_misc_handler ;
 int nwl_wait_for_link (struct nwl_pcie*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 struct platform_device* to_platform_device (struct device*) ;
 int upper_32_bits (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int nwl_pcie_bridge_init(struct nwl_pcie *pcie)
{
 struct device *dev = pcie->dev;
 struct platform_device *pdev = to_platform_device(dev);
 u32 breg_val, ecam_val, first_busno = 0;
 int err;

 breg_val = nwl_bridge_readl(pcie, E_BREG_CAPABILITIES) & BREG_PRESENT;
 if (!breg_val) {
  dev_err(dev, "BREG is not present\n");
  return breg_val;
 }


 nwl_bridge_writel(pcie, lower_32_bits(pcie->phys_breg_base),
     E_BREG_BASE_LO);
 nwl_bridge_writel(pcie, upper_32_bits(pcie->phys_breg_base),
     E_BREG_BASE_HI);


 nwl_bridge_writel(pcie, ~BREG_ENABLE_FORCE & BREG_ENABLE,
     E_BREG_CONTROL);


 nwl_bridge_writel(pcie, nwl_bridge_readl(pcie, BRCFG_PCIE_RX0) |
     CFG_DMA_REG_BAR, BRCFG_PCIE_RX0);


 nwl_bridge_writel(pcie, SET_ISUB_CONTROL, I_ISUB_CONTROL);


 nwl_bridge_writel(pcie, CFG_ENABLE_MSG_FILTER_MASK,
     BRCFG_PCIE_RX_MSG_FILTER);

 err = nwl_wait_for_link(pcie);
 if (err)
  return err;

 ecam_val = nwl_bridge_readl(pcie, E_ECAM_CAPABILITIES) & E_ECAM_PRESENT;
 if (!ecam_val) {
  dev_err(dev, "ECAM is not present\n");
  return ecam_val;
 }


 nwl_bridge_writel(pcie, nwl_bridge_readl(pcie, E_ECAM_CONTROL) |
     E_ECAM_CR_ENABLE, E_ECAM_CONTROL);

 nwl_bridge_writel(pcie, nwl_bridge_readl(pcie, E_ECAM_CONTROL) |
     (pcie->ecam_value << E_ECAM_SIZE_SHIFT),
     E_ECAM_CONTROL);

 nwl_bridge_writel(pcie, lower_32_bits(pcie->phys_ecam_base),
     E_ECAM_BASE_LO);
 nwl_bridge_writel(pcie, upper_32_bits(pcie->phys_ecam_base),
     E_ECAM_BASE_HI);


 ecam_val = nwl_bridge_readl(pcie, E_ECAM_CONTROL);
 pcie->last_busno = (ecam_val & E_ECAM_SIZE_LOC) >> E_ECAM_SIZE_SHIFT;

 ecam_val = first_busno;
 ecam_val |= (first_busno + 1) << 8;
 ecam_val |= (pcie->last_busno << E_ECAM_SIZE_SHIFT);
 writel(ecam_val, (pcie->ecam_base + PCI_PRIMARY_BUS));

 if (nwl_pcie_link_up(pcie))
  dev_info(dev, "Link is UP\n");
 else
  dev_info(dev, "Link is DOWN\n");


 pcie->irq_misc = platform_get_irq_byname(pdev, "misc");
 if (pcie->irq_misc < 0) {
  dev_err(dev, "failed to get misc IRQ %d\n",
   pcie->irq_misc);
  return -EINVAL;
 }

 err = devm_request_irq(dev, pcie->irq_misc,
          nwl_pcie_misc_handler, IRQF_SHARED,
          "nwl_pcie:misc", pcie);
 if (err) {
  dev_err(dev, "fail to register misc IRQ#%d\n",
   pcie->irq_misc);
  return err;
 }


 nwl_bridge_writel(pcie, (u32)~MSGF_MISC_SR_MASKALL, MSGF_MISC_MASK);


 nwl_bridge_writel(pcie, nwl_bridge_readl(pcie, MSGF_MISC_STATUS) &
     MSGF_MISC_SR_MASKALL, MSGF_MISC_STATUS);


 nwl_bridge_writel(pcie, MSGF_MISC_SR_MASKALL, MSGF_MISC_MASK);



 nwl_bridge_writel(pcie, (u32)~MSGF_LEG_SR_MASKALL, MSGF_LEG_MASK);


 nwl_bridge_writel(pcie, nwl_bridge_readl(pcie, MSGF_LEG_STATUS) &
     MSGF_LEG_SR_MASKALL, MSGF_LEG_STATUS);


 nwl_bridge_writel(pcie, MSGF_LEG_SR_MASKALL, MSGF_LEG_MASK);


 nwl_bridge_writel(pcie, nwl_bridge_readl(pcie, BRCFG_INTERRUPT) |
     BRCFG_INTERRUPT_MASK, BRCFG_INTERRUPT);

 return 0;
}
