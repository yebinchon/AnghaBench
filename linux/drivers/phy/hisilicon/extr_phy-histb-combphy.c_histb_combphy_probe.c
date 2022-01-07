
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct histb_combphy_mode {void* mask; void* shift; void* reg; int fixed; } ;
struct histb_combphy_priv {int phy; int por_rst; int ref_clk; struct histb_combphy_mode mode; int syscon; int mmio; } ;
struct device_node {int parent; } ;


 int ARRAY_SIZE (void**) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PHY_NONE ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct phy_provider*) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct histb_combphy_priv*) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct histb_combphy_priv* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 int devm_phy_create (struct device*,int *,int *) ;
 int devm_reset_control_get (struct device*,int *) ;
 int histb_combphy_ops ;
 int histb_combphy_xlate ;
 scalar_t__ is_mode_fixed (struct histb_combphy_mode*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int of_property_read_u32_array (struct device_node*,char*,void**,int ) ;
 int phy_set_drvdata (int ,struct histb_combphy_priv*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int syscon_node_to_regmap (int ) ;

__attribute__((used)) static int histb_combphy_probe(struct platform_device *pdev)
{
 struct phy_provider *phy_provider;
 struct device *dev = &pdev->dev;
 struct histb_combphy_priv *priv;
 struct device_node *np = dev->of_node;
 struct histb_combphy_mode *mode;
 struct resource *res;
 u32 vals[3];
 int ret;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->mmio = devm_ioremap_resource(dev, res);
 if (IS_ERR(priv->mmio)) {
  ret = PTR_ERR(priv->mmio);
  return ret;
 }

 priv->syscon = syscon_node_to_regmap(np->parent);
 if (IS_ERR(priv->syscon)) {
  dev_err(dev, "failed to find peri_ctrl syscon regmap\n");
  return PTR_ERR(priv->syscon);
 }

 mode = &priv->mode;
 mode->fixed = PHY_NONE;

 ret = of_property_read_u32(np, "hisilicon,fixed-mode", &mode->fixed);
 if (ret == 0)
  dev_dbg(dev, "found fixed phy mode %d\n", mode->fixed);

 ret = of_property_read_u32_array(np, "hisilicon,mode-select-bits",
      vals, ARRAY_SIZE(vals));
 if (ret == 0) {
  if (is_mode_fixed(mode)) {
   dev_err(dev, "found select bits for fixed mode phy\n");
   return -EINVAL;
  }

  mode->reg = vals[0];
  mode->shift = vals[1];
  mode->mask = vals[2];
  dev_dbg(dev, "found mode select bits\n");
 } else {
  if (!is_mode_fixed(mode)) {
   dev_err(dev, "no valid select bits found for non-fixed phy\n");
   return -ENODEV;
  }
 }

 priv->ref_clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(priv->ref_clk)) {
  dev_err(dev, "failed to find ref clock\n");
  return PTR_ERR(priv->ref_clk);
 }

 priv->por_rst = devm_reset_control_get(dev, ((void*)0));
 if (IS_ERR(priv->por_rst)) {
  dev_err(dev, "failed to get poweron reset\n");
  return PTR_ERR(priv->por_rst);
 }

 priv->phy = devm_phy_create(dev, ((void*)0), &histb_combphy_ops);
 if (IS_ERR(priv->phy)) {
  dev_err(dev, "failed to create combphy\n");
  return PTR_ERR(priv->phy);
 }

 dev_set_drvdata(dev, priv);
 phy_set_drvdata(priv->phy, priv);

 phy_provider = devm_of_phy_provider_register(dev, histb_combphy_xlate);
 return PTR_ERR_OR_ZERO(phy_provider);
}
