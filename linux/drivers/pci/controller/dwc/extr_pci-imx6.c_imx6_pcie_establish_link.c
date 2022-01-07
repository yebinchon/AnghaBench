
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct imx6_pcie {int link_gen; TYPE_1__* drvdata; struct dw_pcie* pci; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int IMX6_PCIE_FLAG_IMX6_SPEED_CHANGE ;
 int PCIE_LINK_WIDTH_SPEED_CONTROL ;
 int PCIE_PORT_DEBUG0 ;
 int PCIE_PORT_DEBUG1 ;
 int PCIE_RC_LCR ;
 int PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN1 ;
 int PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN2 ;
 int PCIE_RC_LCR_MAX_LINK_SPEEDS_MASK ;
 int PCIE_RC_LCSR ;
 int PORT_LOGIC_SPEED_CHANGE ;
 int dev_dbg (struct device*,char*,int,int) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,...) ;
 int dw_pcie_readl_dbi (struct dw_pcie*,int ) ;
 int dw_pcie_wait_for_link (struct dw_pcie*) ;
 int dw_pcie_writel_dbi (struct dw_pcie*,int ,int) ;
 int imx6_pcie_ltssm_enable (struct device*) ;
 int imx6_pcie_reset_phy (struct imx6_pcie*) ;
 int imx6_pcie_wait_for_speed_change (struct imx6_pcie*) ;

__attribute__((used)) static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
{
 struct dw_pcie *pci = imx6_pcie->pci;
 struct device *dev = pci->dev;
 u32 tmp;
 int ret;






 tmp = dw_pcie_readl_dbi(pci, PCIE_RC_LCR);
 tmp &= ~PCIE_RC_LCR_MAX_LINK_SPEEDS_MASK;
 tmp |= PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN1;
 dw_pcie_writel_dbi(pci, PCIE_RC_LCR, tmp);


 imx6_pcie_ltssm_enable(dev);

 ret = dw_pcie_wait_for_link(pci);
 if (ret)
  goto err_reset_phy;

 if (imx6_pcie->link_gen == 2) {

  tmp = dw_pcie_readl_dbi(pci, PCIE_RC_LCR);
  tmp &= ~PCIE_RC_LCR_MAX_LINK_SPEEDS_MASK;
  tmp |= PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN2;
  dw_pcie_writel_dbi(pci, PCIE_RC_LCR, tmp);





  tmp = dw_pcie_readl_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL);
  tmp |= PORT_LOGIC_SPEED_CHANGE;
  dw_pcie_writel_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL, tmp);

  if (imx6_pcie->drvdata->flags &
      IMX6_PCIE_FLAG_IMX6_SPEED_CHANGE) {
   ret = imx6_pcie_wait_for_speed_change(imx6_pcie);
   if (ret) {
    dev_err(dev, "Failed to bring link up!\n");
    goto err_reset_phy;
   }
  }


  ret = dw_pcie_wait_for_link(pci);
  if (ret) {
   dev_err(dev, "Failed to bring link up!\n");
   goto err_reset_phy;
  }
 } else {
  dev_info(dev, "Link: Gen2 disabled\n");
 }

 tmp = dw_pcie_readl_dbi(pci, PCIE_RC_LCSR);
 dev_info(dev, "Link up, Gen%i\n", (tmp >> 16) & 0xf);
 return 0;

err_reset_phy:
 dev_dbg(dev, "PHY DEBUG_R0=0x%08x DEBUG_R1=0x%08x\n",
  dw_pcie_readl_dbi(pci, PCIE_PORT_DEBUG0),
  dw_pcie_readl_dbi(pci, PCIE_PORT_DEBUG1));
 imx6_pcie_reset_phy(imx6_pcie);
 return ret;
}
