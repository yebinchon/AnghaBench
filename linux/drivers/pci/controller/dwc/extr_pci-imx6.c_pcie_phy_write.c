
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct imx6_pcie {struct dw_pcie* pci; } ;
struct dw_pcie {int dummy; } ;


 int PCIE_PHY_CTRL ;
 int PCIE_PHY_CTRL_CAP_DAT ;
 int PCIE_PHY_CTRL_DATA (int ) ;
 int PCIE_PHY_CTRL_WR ;
 int dw_pcie_writel_dbi (struct dw_pcie*,int ,int) ;
 int pcie_phy_poll_ack (struct imx6_pcie*,int) ;
 int pcie_phy_wait_ack (struct imx6_pcie*,int) ;

__attribute__((used)) static int pcie_phy_write(struct imx6_pcie *imx6_pcie, int addr, u16 data)
{
 struct dw_pcie *pci = imx6_pcie->pci;
 u32 var;
 int ret;



 ret = pcie_phy_wait_ack(imx6_pcie, addr);
 if (ret)
  return ret;

 var = PCIE_PHY_CTRL_DATA(data);
 dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, var);


 var |= PCIE_PHY_CTRL_CAP_DAT;
 dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, var);

 ret = pcie_phy_poll_ack(imx6_pcie, 1);
 if (ret)
  return ret;


 var = PCIE_PHY_CTRL_DATA(data);
 dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, var);


 ret = pcie_phy_poll_ack(imx6_pcie, 0);
 if (ret)
  return ret;


 var = PCIE_PHY_CTRL_WR;
 dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, var);


 ret = pcie_phy_poll_ack(imx6_pcie, 1);
 if (ret)
  return ret;


 var = PCIE_PHY_CTRL_DATA(data);
 dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, var);


 ret = pcie_phy_poll_ack(imx6_pcie, 0);
 if (ret)
  return ret;

 dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, 0x0);

 return 0;
}
