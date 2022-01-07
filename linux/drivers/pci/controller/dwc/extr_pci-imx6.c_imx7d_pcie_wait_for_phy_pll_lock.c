
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct imx6_pcie {int iomuxc_gpr; TYPE_1__* pci; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int IMX7D_GPR22_PCIE_PHY_PLL_LOCKED ;
 int IOMUXC_GPR22 ;
 int PHY_PLL_LOCK_WAIT_TIMEOUT ;
 int PHY_PLL_LOCK_WAIT_USLEEP_MAX ;
 int dev_err (struct device*,char*) ;
 scalar_t__ regmap_read_poll_timeout (int ,int ,int,int,int ,int ) ;

__attribute__((used)) static void imx7d_pcie_wait_for_phy_pll_lock(struct imx6_pcie *imx6_pcie)
{
 u32 val;
 struct device *dev = imx6_pcie->pci->dev;

 if (regmap_read_poll_timeout(imx6_pcie->iomuxc_gpr,
         IOMUXC_GPR22, val,
         val & IMX7D_GPR22_PCIE_PHY_PLL_LOCKED,
         PHY_PLL_LOCK_WAIT_USLEEP_MAX,
         PHY_PLL_LOCK_WAIT_TIMEOUT))
  dev_err(dev, "PCIe PLL lock timeout\n");
}
