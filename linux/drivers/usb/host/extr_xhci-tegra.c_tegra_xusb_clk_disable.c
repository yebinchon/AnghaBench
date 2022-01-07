
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb {int hs_src_clk; int fs_src_clk; int falcon_clk; int ss_clk; int host_clk; int pll_e; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void tegra_xusb_clk_disable(struct tegra_xusb *tegra)
{
 clk_disable_unprepare(tegra->pll_e);
 clk_disable_unprepare(tegra->host_clk);
 clk_disable_unprepare(tegra->ss_clk);
 clk_disable_unprepare(tegra->falcon_clk);
 clk_disable_unprepare(tegra->fs_src_clk);
 clk_disable_unprepare(tegra->hs_src_clk);
}
