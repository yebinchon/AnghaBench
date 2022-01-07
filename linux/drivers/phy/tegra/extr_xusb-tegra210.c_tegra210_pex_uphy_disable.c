
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_pcie_pad {scalar_t__ enable; int pll; int rst; } ;
struct tegra_xusb_padctl {int lock; int pcie; } ;


 scalar_t__ WARN_ON (int) ;
 int clk_disable_unprepare (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reset_control_assert (int ) ;
 struct tegra_xusb_pcie_pad* to_pcie_pad (int ) ;

__attribute__((used)) static void tegra210_pex_uphy_disable(struct tegra_xusb_padctl *padctl)
{
 struct tegra_xusb_pcie_pad *pcie = to_pcie_pad(padctl->pcie);

 mutex_lock(&padctl->lock);

 if (WARN_ON(pcie->enable == 0))
  goto unlock;

 if (--pcie->enable > 0)
  goto unlock;

 reset_control_assert(pcie->rst);
 clk_disable_unprepare(pcie->pll);

unlock:
 mutex_unlock(&padctl->lock);
}
