
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_typec_phy {void* tcphy_rst; void* pipe_rst; void* uphy_rst; void* clk_ref; void* clk_core; void* grf_regs; } ;
struct device {int of_node; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_reset_control_get (struct device*,char*) ;
 void* syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int tcphy_parse_dt(struct rockchip_typec_phy *tcphy,
     struct device *dev)
{
 tcphy->grf_regs = syscon_regmap_lookup_by_phandle(dev->of_node,
         "rockchip,grf");
 if (IS_ERR(tcphy->grf_regs)) {
  dev_err(dev, "could not find grf dt node\n");
  return PTR_ERR(tcphy->grf_regs);
 }

 tcphy->clk_core = devm_clk_get(dev, "tcpdcore");
 if (IS_ERR(tcphy->clk_core)) {
  dev_err(dev, "could not get uphy core clock\n");
  return PTR_ERR(tcphy->clk_core);
 }

 tcphy->clk_ref = devm_clk_get(dev, "tcpdphy-ref");
 if (IS_ERR(tcphy->clk_ref)) {
  dev_err(dev, "could not get uphy ref clock\n");
  return PTR_ERR(tcphy->clk_ref);
 }

 tcphy->uphy_rst = devm_reset_control_get(dev, "uphy");
 if (IS_ERR(tcphy->uphy_rst)) {
  dev_err(dev, "no uphy_rst reset control found\n");
  return PTR_ERR(tcphy->uphy_rst);
 }

 tcphy->pipe_rst = devm_reset_control_get(dev, "uphy-pipe");
 if (IS_ERR(tcphy->pipe_rst)) {
  dev_err(dev, "no pipe_rst reset control found\n");
  return PTR_ERR(tcphy->pipe_rst);
 }

 tcphy->tcphy_rst = devm_reset_control_get(dev, "uphy-tcphy");
 if (IS_ERR(tcphy->tcphy_rst)) {
  dev_err(dev, "no tcphy_rst reset control found\n");
  return PTR_ERR(tcphy->tcphy_rst);
 }

 return 0;
}
