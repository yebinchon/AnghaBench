
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct nwl_msi {scalar_t__ irq_msi1; scalar_t__ irq_msi0; int * bitmap; int lock; } ;
struct nwl_pcie {unsigned long phys_pcie_reg_base; struct nwl_msi msi; struct device* dev; } ;
struct device {int dummy; } ;


 int BITS_TO_LONGS (int ) ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_PCI_MSI_NR ;
 int I_MSII_BASE_HI ;
 int I_MSII_BASE_LO ;
 int I_MSII_CAPABILITIES ;
 int I_MSII_CONTROL ;
 int MSGF_MSI_MASK_HI ;
 int MSGF_MSI_MASK_LO ;
 int MSGF_MSI_SR_HI_MASK ;
 int MSGF_MSI_SR_LO_MASK ;
 int MSGF_MSI_STATUS_HI ;
 int MSGF_MSI_STATUS_LO ;
 int MSII_ENABLE ;
 int MSII_PRESENT ;
 int MSII_STATUS_ENABLE ;
 int dev_err (struct device*,char*,...) ;
 int irq_set_chained_handler_and_data (scalar_t__,int ,struct nwl_pcie*) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int lower_32_bits (unsigned long) ;
 int mutex_init (int *) ;
 int nwl_bridge_readl (struct nwl_pcie*,int ) ;
 int nwl_bridge_writel (struct nwl_pcie*,int,int ) ;
 int nwl_pcie_msi_handler_high ;
 int nwl_pcie_msi_handler_low ;
 void* platform_get_irq_byname (struct platform_device*,char*) ;
 struct platform_device* to_platform_device (struct device*) ;
 int upper_32_bits (unsigned long) ;

__attribute__((used)) static int nwl_pcie_enable_msi(struct nwl_pcie *pcie)
{
 struct device *dev = pcie->dev;
 struct platform_device *pdev = to_platform_device(dev);
 struct nwl_msi *msi = &pcie->msi;
 unsigned long base;
 int ret;
 int size = BITS_TO_LONGS(INT_PCI_MSI_NR) * sizeof(long);

 mutex_init(&msi->lock);

 msi->bitmap = kzalloc(size, GFP_KERNEL);
 if (!msi->bitmap)
  return -ENOMEM;


 msi->irq_msi1 = platform_get_irq_byname(pdev, "msi1");
 if (msi->irq_msi1 < 0) {
  dev_err(dev, "failed to get IRQ#%d\n", msi->irq_msi1);
  ret = -EINVAL;
  goto err;
 }

 irq_set_chained_handler_and_data(msi->irq_msi1,
      nwl_pcie_msi_handler_high, pcie);


 msi->irq_msi0 = platform_get_irq_byname(pdev, "msi0");
 if (msi->irq_msi0 < 0) {
  dev_err(dev, "failed to get IRQ#%d\n", msi->irq_msi0);
  ret = -EINVAL;
  goto err;
 }

 irq_set_chained_handler_and_data(msi->irq_msi0,
      nwl_pcie_msi_handler_low, pcie);


 ret = nwl_bridge_readl(pcie, I_MSII_CAPABILITIES) & MSII_PRESENT;
 if (!ret) {
  dev_err(dev, "MSI not present\n");
  ret = -EIO;
  goto err;
 }


 nwl_bridge_writel(pcie, nwl_bridge_readl(pcie, I_MSII_CONTROL) |
     MSII_ENABLE, I_MSII_CONTROL);


 nwl_bridge_writel(pcie, nwl_bridge_readl(pcie, I_MSII_CONTROL) |
     MSII_STATUS_ENABLE, I_MSII_CONTROL);


 base = pcie->phys_pcie_reg_base;
 nwl_bridge_writel(pcie, lower_32_bits(base), I_MSII_BASE_LO);
 nwl_bridge_writel(pcie, upper_32_bits(base), I_MSII_BASE_HI);





 nwl_bridge_writel(pcie, 0, MSGF_MSI_MASK_HI);

 nwl_bridge_writel(pcie, nwl_bridge_readl(pcie, MSGF_MSI_STATUS_HI) &
     MSGF_MSI_SR_HI_MASK, MSGF_MSI_STATUS_HI);

 nwl_bridge_writel(pcie, MSGF_MSI_SR_HI_MASK, MSGF_MSI_MASK_HI);





 nwl_bridge_writel(pcie, 0, MSGF_MSI_MASK_LO);

 nwl_bridge_writel(pcie, nwl_bridge_readl(pcie, MSGF_MSI_STATUS_LO) &
     MSGF_MSI_SR_LO_MASK, MSGF_MSI_STATUS_LO);

 nwl_bridge_writel(pcie, MSGF_MSI_SR_LO_MASK, MSGF_MSI_MASK_LO);

 return 0;
err:
 kfree(msi->bitmap);
 msi->bitmap = ((void*)0);
 return ret;
}
