
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct imx6_pcie {TYPE_2__* pci; TYPE_1__* drvdata; int pcie_phy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int flags; } ;


 int EINVAL ;
 int IMX6_PCIE_FLAG_IMX6_PHY ;
 int PCIE_PHY_ATEOVRD ;
 int PCIE_PHY_ATEOVRD_EN ;
 int PCIE_PHY_ATEOVRD_REF_CLKDIV_MASK ;
 int PCIE_PHY_ATEOVRD_REF_CLKDIV_SHIFT ;
 int PCIE_PHY_MPLL_MULTIPLIER_MASK ;
 int PCIE_PHY_MPLL_MULTIPLIER_OVRD ;
 int PCIE_PHY_MPLL_MULTIPLIER_SHIFT ;
 int PCIE_PHY_MPLL_OVRD_IN_LO ;
 unsigned long clk_get_rate (int ) ;
 int dev_err (int ,char*,unsigned long) ;
 int pcie_phy_read (struct imx6_pcie*,int ,int*) ;
 int pcie_phy_write (struct imx6_pcie*,int ,int) ;

__attribute__((used)) static int imx6_setup_phy_mpll(struct imx6_pcie *imx6_pcie)
{
 unsigned long phy_rate = clk_get_rate(imx6_pcie->pcie_phy);
 int mult, div;
 u16 val;

 if (!(imx6_pcie->drvdata->flags & IMX6_PCIE_FLAG_IMX6_PHY))
  return 0;

 switch (phy_rate) {
 case 125000000:




  return 0;
 case 100000000:
  mult = 25;
  div = 0;
  break;
 case 200000000:
  mult = 25;
  div = 1;
  break;
 default:
  dev_err(imx6_pcie->pci->dev,
   "Unsupported PHY reference clock rate %lu\n", phy_rate);
  return -EINVAL;
 }

 pcie_phy_read(imx6_pcie, PCIE_PHY_MPLL_OVRD_IN_LO, &val);
 val &= ~(PCIE_PHY_MPLL_MULTIPLIER_MASK <<
   PCIE_PHY_MPLL_MULTIPLIER_SHIFT);
 val |= mult << PCIE_PHY_MPLL_MULTIPLIER_SHIFT;
 val |= PCIE_PHY_MPLL_MULTIPLIER_OVRD;
 pcie_phy_write(imx6_pcie, PCIE_PHY_MPLL_OVRD_IN_LO, val);

 pcie_phy_read(imx6_pcie, PCIE_PHY_ATEOVRD, &val);
 val &= ~(PCIE_PHY_ATEOVRD_REF_CLKDIV_MASK <<
   PCIE_PHY_ATEOVRD_REF_CLKDIV_SHIFT);
 val |= div << PCIE_PHY_ATEOVRD_REF_CLKDIV_SHIFT;
 val |= PCIE_PHY_ATEOVRD_EN;
 pcie_phy_write(imx6_pcie, PCIE_PHY_ATEOVRD, val);

 return 0;
}
