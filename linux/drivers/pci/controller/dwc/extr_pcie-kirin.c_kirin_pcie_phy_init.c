
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kirin_pcie {TYPE_1__* pci; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int EINVAL ;
 int PCIE_APB_PHY_CTRL0 ;
 int PCIE_APB_PHY_CTRL1 ;
 int PCIE_APB_PHY_STATUS0 ;
 int PHY_PWR_DOWN_BIT ;
 int PHY_REF_PAD_BIT ;
 int PHY_RST_ACK_BIT ;
 int PIPE_CLK_STABLE ;
 int PIPE_CLK_WAIT_MAX ;
 int PIPE_CLK_WAIT_MIN ;
 int TIME_PHY_PD_MAX ;
 int TIME_PHY_PD_MIN ;
 int dev_err (struct device*,char*) ;
 int kirin_apb_phy_readl (struct kirin_pcie*,int ) ;
 int kirin_apb_phy_writel (struct kirin_pcie*,int,int ) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int kirin_pcie_phy_init(struct kirin_pcie *kirin_pcie)
{
 struct device *dev = kirin_pcie->pci->dev;
 u32 reg_val;

 reg_val = kirin_apb_phy_readl(kirin_pcie, PCIE_APB_PHY_CTRL1);
 reg_val &= ~PHY_REF_PAD_BIT;
 kirin_apb_phy_writel(kirin_pcie, reg_val, PCIE_APB_PHY_CTRL1);

 reg_val = kirin_apb_phy_readl(kirin_pcie, PCIE_APB_PHY_CTRL0);
 reg_val &= ~PHY_PWR_DOWN_BIT;
 kirin_apb_phy_writel(kirin_pcie, reg_val, PCIE_APB_PHY_CTRL0);
 usleep_range(TIME_PHY_PD_MIN, TIME_PHY_PD_MAX);

 reg_val = kirin_apb_phy_readl(kirin_pcie, PCIE_APB_PHY_CTRL1);
 reg_val &= ~PHY_RST_ACK_BIT;
 kirin_apb_phy_writel(kirin_pcie, reg_val, PCIE_APB_PHY_CTRL1);

 usleep_range(PIPE_CLK_WAIT_MIN, PIPE_CLK_WAIT_MAX);
 reg_val = kirin_apb_phy_readl(kirin_pcie, PCIE_APB_PHY_STATUS0);
 if (reg_val & PIPE_CLK_STABLE) {
  dev_err(dev, "PIPE clk is not stable\n");
  return -EINVAL;
 }

 return 0;
}
