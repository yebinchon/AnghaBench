
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct of_phandle_args {int * args; int np; } ;
struct ci_hdrc_msm {int secondary_phy; scalar_t__ base; } ;


 int HS_PHY_DIG_CLAMP_N ;
 scalar_t__ HS_PHY_SEC_CTRL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int of_node_put (int ) ;
 int of_parse_phandle_with_fixed_args (int ,char*,int,int ,struct of_phandle_args*) ;
 int readl_relaxed (scalar_t__) ;
 int regmap_write (struct regmap*,int ,int ) ;
 struct regmap* syscon_node_to_regmap (int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int ci_hdrc_msm_mux_phy(struct ci_hdrc_msm *ci,
          struct platform_device *pdev)
{
 struct regmap *regmap;
 struct device *dev = &pdev->dev;
 struct of_phandle_args args;
 u32 val;
 int ret;

 ret = of_parse_phandle_with_fixed_args(dev->of_node, "phy-select", 2, 0,
            &args);
 if (ret)
  return 0;

 regmap = syscon_node_to_regmap(args.np);
 of_node_put(args.np);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 ret = regmap_write(regmap, args.args[0], args.args[1]);
 if (ret)
  return ret;

 ci->secondary_phy = !!args.args[1];
 if (ci->secondary_phy) {
  val = readl_relaxed(ci->base + HS_PHY_SEC_CTRL);
  val |= HS_PHY_DIG_CLAMP_N;
  writel_relaxed(val, ci->base + HS_PHY_SEC_CTRL);
 }

 return 0;
}
