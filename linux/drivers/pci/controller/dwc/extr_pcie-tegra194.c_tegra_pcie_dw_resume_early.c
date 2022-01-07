
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pcie_dw {int link_state; } ;
struct device {int dummy; } ;


 int APPL_CTRL ;
 int APPL_CTRL_HW_HOT_RST_EN ;
 int APPL_CTRL_HW_HOT_RST_MODE_IMDT_RST ;
 int APPL_CTRL_HW_HOT_RST_MODE_MASK ;
 int APPL_CTRL_HW_HOT_RST_MODE_SHIFT ;
 int appl_readl (struct tegra_pcie_dw*,int ) ;
 int appl_writel (struct tegra_pcie_dw*,int,int ) ;
 struct tegra_pcie_dw* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int tegra_pcie_dw_resume_early(struct device *dev)
{
 struct tegra_pcie_dw *pcie = dev_get_drvdata(dev);
 u32 val;

 if (!pcie->link_state)
  return 0;


 val = appl_readl(pcie, APPL_CTRL);
 val &= ~(APPL_CTRL_HW_HOT_RST_MODE_MASK <<
   APPL_CTRL_HW_HOT_RST_MODE_SHIFT);
 val |= APPL_CTRL_HW_HOT_RST_MODE_IMDT_RST <<
        APPL_CTRL_HW_HOT_RST_MODE_SHIFT;
 val &= ~APPL_CTRL_HW_HOT_RST_EN;
 appl_writel(pcie, val, APPL_CTRL);

 return 0;
}
