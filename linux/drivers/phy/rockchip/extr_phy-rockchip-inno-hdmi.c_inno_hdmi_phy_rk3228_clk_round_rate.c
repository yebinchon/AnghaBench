
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pre_pll_config {unsigned long pixclock; int fracdiv; } ;
struct clk_hw {int dummy; } ;


 long EINVAL ;
 struct pre_pll_config* pre_pll_cfg_table ;

__attribute__((used)) static long inno_hdmi_phy_rk3228_clk_round_rate(struct clk_hw *hw,
      unsigned long rate,
      unsigned long *parent_rate)
{
 const struct pre_pll_config *cfg = pre_pll_cfg_table;

 for (; cfg->pixclock != 0; cfg++)
  if (cfg->pixclock == rate && !cfg->fracdiv)
   break;

 if (cfg->pixclock == 0)
  return -EINVAL;

 return cfg->pixclock;
}
