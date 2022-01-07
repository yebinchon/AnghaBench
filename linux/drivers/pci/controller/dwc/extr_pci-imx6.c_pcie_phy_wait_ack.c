
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx6_pcie {struct dw_pcie* pci; } ;
struct dw_pcie {int dummy; } ;


 int PCIE_PHY_CTRL ;
 int PCIE_PHY_CTRL_CAP_ADR ;
 int PCIE_PHY_CTRL_DATA (int) ;
 int dw_pcie_writel_dbi (struct dw_pcie*,int ,int ) ;
 int pcie_phy_poll_ack (struct imx6_pcie*,int) ;

__attribute__((used)) static int pcie_phy_wait_ack(struct imx6_pcie *imx6_pcie, int addr)
{
 struct dw_pcie *pci = imx6_pcie->pci;
 u32 val;
 int ret;

 val = PCIE_PHY_CTRL_DATA(addr);
 dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, val);

 val |= PCIE_PHY_CTRL_CAP_ADR;
 dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, val);

 ret = pcie_phy_poll_ack(imx6_pcie, 1);
 if (ret)
  return ret;

 val = PCIE_PHY_CTRL_DATA(addr);
 dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, val);

 return pcie_phy_poll_ack(imx6_pcie, 0);
}
