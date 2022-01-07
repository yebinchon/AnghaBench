
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device_node* of_node; } ;
struct rproc {struct device dev; struct imx_rproc* priv; } ;
struct regmap_config {char* name; } ;
struct regmap {int dummy; } ;
struct platform_device {struct device dev; } ;
struct imx_rproc_dcfg {int dummy; } ;
struct imx_rproc {struct regmap* clk; struct device* dev; struct imx_rproc_dcfg const* dcfg; struct regmap* regmap; struct rproc* rproc; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int clk_disable_unprepare (struct regmap*) ;
 int clk_prepare_enable (struct regmap*) ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct rproc*) ;
 struct regmap* devm_clk_get (struct device*,int *) ;
 int imx_rproc_addr_init (struct imx_rproc*,struct platform_device*) ;
 int imx_rproc_ops ;
 struct imx_rproc_dcfg* of_device_get_match_data (struct device*) ;
 int regmap_attach_dev (struct device*,struct regmap*,struct regmap_config*) ;
 int rproc_add (struct rproc*) ;
 struct rproc* rproc_alloc (struct device*,char*,int *,int *,int) ;
 int rproc_free (struct rproc*) ;
 struct regmap* syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int imx_rproc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct imx_rproc *priv;
 struct rproc *rproc;
 struct regmap_config config = { .name = "imx-rproc" };
 const struct imx_rproc_dcfg *dcfg;
 struct regmap *regmap;
 int ret;

 regmap = syscon_regmap_lookup_by_phandle(np, "syscon");
 if (IS_ERR(regmap)) {
  dev_err(dev, "failed to find syscon\n");
  return PTR_ERR(regmap);
 }
 regmap_attach_dev(dev, regmap, &config);


 rproc = rproc_alloc(dev, "imx-rproc", &imx_rproc_ops,
       ((void*)0), sizeof(*priv));
 if (!rproc)
  return -ENOMEM;

 dcfg = of_device_get_match_data(dev);
 if (!dcfg) {
  ret = -EINVAL;
  goto err_put_rproc;
 }

 priv = rproc->priv;
 priv->rproc = rproc;
 priv->regmap = regmap;
 priv->dcfg = dcfg;
 priv->dev = dev;

 dev_set_drvdata(dev, rproc);

 ret = imx_rproc_addr_init(priv, pdev);
 if (ret) {
  dev_err(dev, "failed on imx_rproc_addr_init\n");
  goto err_put_rproc;
 }

 priv->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(priv->clk)) {
  dev_err(dev, "Failed to get clock\n");
  ret = PTR_ERR(priv->clk);
  goto err_put_rproc;
 }





 ret = clk_prepare_enable(priv->clk);
 if (ret) {
  dev_err(&rproc->dev, "Failed to enable clock\n");
  goto err_put_rproc;
 }

 ret = rproc_add(rproc);
 if (ret) {
  dev_err(dev, "rproc_add failed\n");
  goto err_put_clk;
 }

 return 0;

err_put_clk:
 clk_disable_unprepare(priv->clk);
err_put_rproc:
 rproc_free(rproc);

 return ret;
}
