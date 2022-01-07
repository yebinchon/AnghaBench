
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy {int dummy; } ;
struct exynos_dp_video_phy {int drvdata; struct phy* regs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct phy*) ;
 int PTR_ERR (struct phy*) ;
 int PTR_ERR_OR_ZERO (struct phy_provider*) ;
 int dev_err (struct device*,char*) ;
 struct exynos_dp_video_phy* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 struct phy* devm_phy_create (struct device*,int *,int *) ;
 int exynos_dp_video_phy_ops ;
 int of_device_get_match_data (struct device*) ;
 int of_phy_simple_xlate ;
 int phy_set_drvdata (struct phy*,struct exynos_dp_video_phy*) ;
 struct phy* syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int exynos_dp_video_phy_probe(struct platform_device *pdev)
{
 struct exynos_dp_video_phy *state;
 struct device *dev = &pdev->dev;
 struct phy_provider *phy_provider;
 struct phy *phy;

 state = devm_kzalloc(dev, sizeof(*state), GFP_KERNEL);
 if (!state)
  return -ENOMEM;

 state->regs = syscon_regmap_lookup_by_phandle(dev->of_node,
            "samsung,pmu-syscon");
 if (IS_ERR(state->regs)) {
  dev_err(dev, "Failed to lookup PMU regmap\n");
  return PTR_ERR(state->regs);
 }

 state->drvdata = of_device_get_match_data(dev);

 phy = devm_phy_create(dev, ((void*)0), &exynos_dp_video_phy_ops);
 if (IS_ERR(phy)) {
  dev_err(dev, "failed to create Display Port PHY\n");
  return PTR_ERR(phy);
 }
 phy_set_drvdata(phy, state);

 phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);

 return PTR_ERR_OR_ZERO(phy_provider);
}
