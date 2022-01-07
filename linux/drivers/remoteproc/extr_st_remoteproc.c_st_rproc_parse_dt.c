
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_rproc {void* clk; int boot_offset; void* boot_base; int clk_rate; void* pwr_reset; TYPE_1__* config; void* sw_reset; } ;
struct rproc {struct st_rproc* priv; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {scalar_t__ pwr_reset; scalar_t__ sw_reset; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int clk_prepare (void*) ;
 int dev_err (struct device*,char*) ;
 void* devm_clk_get (struct device*,int *) ;
 void* devm_reset_control_get_exclusive (struct device*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int of_property_read_u32_index (struct device_node*,char*,int,int *) ;
 struct rproc* platform_get_drvdata (struct platform_device*) ;
 void* syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int st_rproc_parse_dt(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct rproc *rproc = platform_get_drvdata(pdev);
 struct st_rproc *ddata = rproc->priv;
 struct device_node *np = dev->of_node;
 int err;

 if (ddata->config->sw_reset) {
  ddata->sw_reset = devm_reset_control_get_exclusive(dev,
           "sw_reset");
  if (IS_ERR(ddata->sw_reset)) {
   dev_err(dev, "Failed to get S/W Reset\n");
   return PTR_ERR(ddata->sw_reset);
  }
 }

 if (ddata->config->pwr_reset) {
  ddata->pwr_reset = devm_reset_control_get_exclusive(dev,
            "pwr_reset");
  if (IS_ERR(ddata->pwr_reset)) {
   dev_err(dev, "Failed to get Power Reset\n");
   return PTR_ERR(ddata->pwr_reset);
  }
 }

 ddata->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(ddata->clk)) {
  dev_err(dev, "Failed to get clock\n");
  return PTR_ERR(ddata->clk);
 }

 err = of_property_read_u32(np, "clock-frequency", &ddata->clk_rate);
 if (err) {
  dev_err(dev, "failed to get clock frequency\n");
  return err;
 }

 ddata->boot_base = syscon_regmap_lookup_by_phandle(np, "st,syscfg");
 if (IS_ERR(ddata->boot_base)) {
  dev_err(dev, "Boot base not found\n");
  return PTR_ERR(ddata->boot_base);
 }

 err = of_property_read_u32_index(np, "st,syscfg", 1,
      &ddata->boot_offset);
 if (err) {
  dev_err(dev, "Boot offset not found\n");
  return -EINVAL;
 }

 err = clk_prepare(ddata->clk);
 if (err)
  dev_err(dev, "failed to get clock\n");

 return err;
}
