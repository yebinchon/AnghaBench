
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_pcie_pad {int dummy; } ;
struct tegra_xusb_pad {int dummy; } ;


 int kfree (struct tegra_xusb_pcie_pad*) ;
 struct tegra_xusb_pcie_pad* to_pcie_pad (struct tegra_xusb_pad*) ;

__attribute__((used)) static void tegra124_pcie_pad_remove(struct tegra_xusb_pad *pad)
{
 struct tegra_xusb_pcie_pad *pcie = to_pcie_pad(pad);

 kfree(pcie);
}
