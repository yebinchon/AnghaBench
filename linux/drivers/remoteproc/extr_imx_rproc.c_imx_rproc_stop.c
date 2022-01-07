
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {struct imx_rproc* priv; } ;
struct imx_rproc_dcfg {int src_stop; int src_mask; int src_reg; } ;
struct imx_rproc {int regmap; struct device* dev; struct imx_rproc_dcfg* dcfg; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int imx_rproc_stop(struct rproc *rproc)
{
 struct imx_rproc *priv = rproc->priv;
 const struct imx_rproc_dcfg *dcfg = priv->dcfg;
 struct device *dev = priv->dev;
 int ret;

 ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
     dcfg->src_mask, dcfg->src_stop);
 if (ret)
  dev_err(dev, "Failed to stop M4!\n");

 return ret;
}
