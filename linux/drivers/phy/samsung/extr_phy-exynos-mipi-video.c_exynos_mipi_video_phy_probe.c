
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy {int dummy; } ;
struct mipi_phy_device_desc {unsigned int num_regmaps; unsigned int num_phys; int * phys; int * regmap_names; } ;
struct exynos_mipi_video_phy {unsigned int num_phys; TYPE_1__* phys; int slock; struct phy** regmaps; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {unsigned int index; int * data; struct phy* phy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct phy*) ;
 int PTR_ERR (struct phy*) ;
 int PTR_ERR_OR_ZERO (struct phy_provider*) ;
 int dev_err (struct device*,char*,unsigned int) ;
 int dev_set_drvdata (struct device*,struct exynos_mipi_video_phy*) ;
 struct exynos_mipi_video_phy* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 struct phy* devm_phy_create (struct device*,int *,int *) ;
 int exynos_mipi_video_phy_ops ;
 int exynos_mipi_video_phy_xlate ;
 struct mipi_phy_device_desc* of_device_get_match_data (struct device*) ;
 int phy_set_drvdata (struct phy*,TYPE_1__*) ;
 int spin_lock_init (int *) ;
 struct phy* syscon_regmap_lookup_by_phandle (struct device_node*,int ) ;

__attribute__((used)) static int exynos_mipi_video_phy_probe(struct platform_device *pdev)
{
 const struct mipi_phy_device_desc *phy_dev;
 struct exynos_mipi_video_phy *state;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct phy_provider *phy_provider;
 unsigned int i;

 phy_dev = of_device_get_match_data(dev);
 if (!phy_dev)
  return -ENODEV;

 state = devm_kzalloc(dev, sizeof(*state), GFP_KERNEL);
 if (!state)
  return -ENOMEM;

 for (i = 0; i < phy_dev->num_regmaps; i++) {
  state->regmaps[i] = syscon_regmap_lookup_by_phandle(np,
      phy_dev->regmap_names[i]);
  if (IS_ERR(state->regmaps[i]))
   return PTR_ERR(state->regmaps[i]);
 }
 state->num_phys = phy_dev->num_phys;
 spin_lock_init(&state->slock);

 dev_set_drvdata(dev, state);

 for (i = 0; i < state->num_phys; i++) {
  struct phy *phy = devm_phy_create(dev, ((void*)0),
        &exynos_mipi_video_phy_ops);
  if (IS_ERR(phy)) {
   dev_err(dev, "failed to create PHY %d\n", i);
   return PTR_ERR(phy);
  }

  state->phys[i].phy = phy;
  state->phys[i].index = i;
  state->phys[i].data = &phy_dev->phys[i];
  phy_set_drvdata(phy, &state->phys[i]);
 }

 phy_provider = devm_of_phy_provider_register(dev,
     exynos_mipi_video_phy_xlate);

 return PTR_ERR_OR_ZERO(phy_provider);
}
