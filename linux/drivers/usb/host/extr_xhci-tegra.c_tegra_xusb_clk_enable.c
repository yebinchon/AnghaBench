
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_xusb {int pll_e; int host_clk; int ss_clk; int falcon_clk; int fs_src_clk; int hs_src_clk; TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ scale_ss_clock; } ;


 int TEGRA_XHCI_SS_HIGH_SPEED ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int tegra_xusb_set_ss_clk (struct tegra_xusb*,int ) ;

__attribute__((used)) static int tegra_xusb_clk_enable(struct tegra_xusb *tegra)
{
 int err;

 err = clk_prepare_enable(tegra->pll_e);
 if (err < 0)
  return err;

 err = clk_prepare_enable(tegra->host_clk);
 if (err < 0)
  goto disable_plle;

 err = clk_prepare_enable(tegra->ss_clk);
 if (err < 0)
  goto disable_host;

 err = clk_prepare_enable(tegra->falcon_clk);
 if (err < 0)
  goto disable_ss;

 err = clk_prepare_enable(tegra->fs_src_clk);
 if (err < 0)
  goto disable_falc;

 err = clk_prepare_enable(tegra->hs_src_clk);
 if (err < 0)
  goto disable_fs_src;

 if (tegra->soc->scale_ss_clock) {
  err = tegra_xusb_set_ss_clk(tegra, TEGRA_XHCI_SS_HIGH_SPEED);
  if (err < 0)
   goto disable_hs_src;
 }

 return 0;

disable_hs_src:
 clk_disable_unprepare(tegra->hs_src_clk);
disable_fs_src:
 clk_disable_unprepare(tegra->fs_src_clk);
disable_falc:
 clk_disable_unprepare(tegra->falcon_clk);
disable_ss:
 clk_disable_unprepare(tegra->ss_clk);
disable_host:
 clk_disable_unprepare(tegra->host_clk);
disable_plle:
 clk_disable_unprepare(tegra->pll_e);
 return err;
}
