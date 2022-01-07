
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct imx6_pcie {TYPE_1__* drvdata; } ;
struct TYPE_2__ {int flags; } ;


 int IMX6_PCIE_FLAG_IMX6_PHY ;
 int PHY_RX_OVRD_IN_LO ;
 int PHY_RX_OVRD_IN_LO_RX_DATA_EN ;
 int PHY_RX_OVRD_IN_LO_RX_PLL_EN ;
 int pcie_phy_read (struct imx6_pcie*,int ,int*) ;
 int pcie_phy_write (struct imx6_pcie*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void imx6_pcie_reset_phy(struct imx6_pcie *imx6_pcie)
{
 u16 tmp;

 if (!(imx6_pcie->drvdata->flags & IMX6_PCIE_FLAG_IMX6_PHY))
  return;

 pcie_phy_read(imx6_pcie, PHY_RX_OVRD_IN_LO, &tmp);
 tmp |= (PHY_RX_OVRD_IN_LO_RX_DATA_EN |
  PHY_RX_OVRD_IN_LO_RX_PLL_EN);
 pcie_phy_write(imx6_pcie, PHY_RX_OVRD_IN_LO, tmp);

 usleep_range(2000, 3000);

 pcie_phy_read(imx6_pcie, PHY_RX_OVRD_IN_LO, &tmp);
 tmp &= ~(PHY_RX_OVRD_IN_LO_RX_DATA_EN |
    PHY_RX_OVRD_IN_LO_RX_PLL_EN);
 pcie_phy_write(imx6_pcie, PHY_RX_OVRD_IN_LO, tmp);
}
