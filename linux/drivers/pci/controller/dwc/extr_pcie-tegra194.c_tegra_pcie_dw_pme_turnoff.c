
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pcie_dw {int dev; scalar_t__ appl_base; int pci; } ;


 int APPL_CTRL ;
 int APPL_CTRL_LTSSM_EN ;
 scalar_t__ APPL_DEBUG ;
 int APPL_DEBUG_LTSSM_STATE_MASK ;
 int APPL_DEBUG_LTSSM_STATE_SHIFT ;
 int APPL_PINMUX ;
 int APPL_PINMUX_CLKREQ_OVERRIDE ;
 int APPL_PINMUX_CLKREQ_OVERRIDE_EN ;
 int APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE ;
 int APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE_EN ;
 int APPL_PINMUX_PEX_RST ;
 int LTSSM_STATE_PRE_DETECT ;
 int LTSSM_TIMEOUT ;
 int appl_readl (struct tegra_pcie_dw*,int ) ;
 int appl_writel (struct tegra_pcie_dw*,int,int ) ;
 int dev_dbg (int ,char*) ;
 int dev_info (int ,char*) ;
 int readl_poll_timeout_atomic (scalar_t__,int,int,int,int ) ;
 int tegra_pcie_dw_link_up (int *) ;
 scalar_t__ tegra_pcie_try_link_l2 (struct tegra_pcie_dw*) ;

__attribute__((used)) static void tegra_pcie_dw_pme_turnoff(struct tegra_pcie_dw *pcie)
{
 u32 data;
 int err;

 if (!tegra_pcie_dw_link_up(&pcie->pci)) {
  dev_dbg(pcie->dev, "PCIe link is not up...!\n");
  return;
 }

 if (tegra_pcie_try_link_l2(pcie)) {
  dev_info(pcie->dev, "Link didn't transition to L2 state\n");






  data = appl_readl(pcie, APPL_PINMUX);
  data &= ~APPL_PINMUX_PEX_RST;
  appl_writel(pcie, data, APPL_PINMUX);

  err = readl_poll_timeout_atomic(pcie->appl_base + APPL_DEBUG,
      data,
      ((data &
      APPL_DEBUG_LTSSM_STATE_MASK) >>
      APPL_DEBUG_LTSSM_STATE_SHIFT) ==
      LTSSM_STATE_PRE_DETECT,
      1, LTSSM_TIMEOUT);
  if (err) {
   dev_info(pcie->dev, "Link didn't go to detect state\n");
  } else {

   data = appl_readl(pcie, APPL_CTRL);
   data &= ~APPL_CTRL_LTSSM_EN;
   appl_writel(pcie, data, APPL_CTRL);
  }
 }




 data = appl_readl(pcie, APPL_PINMUX);
 data |= (APPL_PINMUX_CLKREQ_OVERRIDE_EN | APPL_PINMUX_CLKREQ_OVERRIDE);

 data |= APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE_EN;
 data &= ~APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE;
 appl_writel(pcie, data, APPL_PINMUX);
}
