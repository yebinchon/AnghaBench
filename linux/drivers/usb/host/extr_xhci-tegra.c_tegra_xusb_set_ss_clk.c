
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb {int dev; struct clk* clk_m; struct clk* pll_u_480m; struct clk* ss_src_clk; } ;
struct clk {int dummy; } ;


 int EINVAL ;


 struct clk* clk_get_parent (struct clk*) ;
 unsigned long clk_get_rate (struct clk*) ;
 int clk_set_parent (struct clk*,struct clk*) ;
 int clk_set_rate (struct clk*,unsigned long) ;
 int dev_err (int ,char*,...) ;

__attribute__((used)) static int tegra_xusb_set_ss_clk(struct tegra_xusb *tegra,
     unsigned long rate)
{
 unsigned long new_parent_rate, old_parent_rate;
 struct clk *clk = tegra->ss_src_clk;
 unsigned int div;
 int err;

 if (clk_get_rate(clk) == rate)
  return 0;

 switch (rate) {
 case 129:




  old_parent_rate = clk_get_rate(clk_get_parent(clk));
  new_parent_rate = clk_get_rate(tegra->pll_u_480m);
  div = new_parent_rate / rate;

  err = clk_set_rate(clk, old_parent_rate / div);
  if (err)
   return err;

  err = clk_set_parent(clk, tegra->pll_u_480m);
  if (err)
   return err;





  err = clk_set_rate(clk, rate);
  if (err)
   return err;

  break;

 case 128:

  err = clk_set_parent(clk, tegra->clk_m);
  if (err)
   return err;

  err = clk_set_rate(clk, rate);
  if (err)
   return err;

  break;

 default:
  dev_err(tegra->dev, "Invalid SS rate: %lu Hz\n", rate);
  return -EINVAL;
 }

 if (clk_get_rate(clk) != rate) {
  dev_err(tegra->dev, "SS clock doesn't match requested rate\n");
  return -EINVAL;
 }

 return 0;
}
