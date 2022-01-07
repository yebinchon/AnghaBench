
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int start; } ;
struct device {TYPE_1__* parent; int of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {struct device* parent; int * fops; int name; int minor; } ;
struct aspeed_lpc_ctrl {int clk; TYPE_2__ miscdev; int regmap; int mem_base; void* mem_size; int pnor_base; void* pnor_size; } ;
struct TYPE_3__ {int of_node; } ;


 int DEVICE_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MISC_DYNAMIC_MINOR ;
 int PTR_ERR (int ) ;
 int aspeed_lpc_ctrl_fops ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct aspeed_lpc_ctrl*) ;
 int devm_clk_get (struct device*,int *) ;
 struct aspeed_lpc_ctrl* devm_kzalloc (struct device*,int,int ) ;
 int misc_register (TYPE_2__*) ;
 int of_address_to_resource (struct device_node*,int,struct resource*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 void* resource_size (struct resource*) ;
 int syscon_node_to_regmap (int ) ;

__attribute__((used)) static int aspeed_lpc_ctrl_probe(struct platform_device *pdev)
{
 struct aspeed_lpc_ctrl *lpc_ctrl;
 struct device_node *node;
 struct resource resm;
 struct device *dev;
 int rc;

 dev = &pdev->dev;

 lpc_ctrl = devm_kzalloc(dev, sizeof(*lpc_ctrl), GFP_KERNEL);
 if (!lpc_ctrl)
  return -ENOMEM;


 node = of_parse_phandle(dev->of_node, "flash", 0);
 if (!node) {
  dev_dbg(dev, "Didn't find host pnor flash node\n");
 } else {
  rc = of_address_to_resource(node, 1, &resm);
  of_node_put(node);
  if (rc) {
   dev_err(dev, "Couldn't address to resource for flash\n");
   return rc;
  }

  lpc_ctrl->pnor_size = resource_size(&resm);
  lpc_ctrl->pnor_base = resm.start;
 }


 dev_set_drvdata(&pdev->dev, lpc_ctrl);


 node = of_parse_phandle(dev->of_node, "memory-region", 0);
 if (!node) {
  dev_dbg(dev, "Didn't find reserved memory\n");
 } else {
  rc = of_address_to_resource(node, 0, &resm);
  of_node_put(node);
  if (rc) {
   dev_err(dev, "Couldn't address to resource for reserved memory\n");
   return -ENXIO;
  }

  lpc_ctrl->mem_size = resource_size(&resm);
  lpc_ctrl->mem_base = resm.start;
 }

 lpc_ctrl->regmap = syscon_node_to_regmap(
   pdev->dev.parent->of_node);
 if (IS_ERR(lpc_ctrl->regmap)) {
  dev_err(dev, "Couldn't get regmap\n");
  return -ENODEV;
 }

 lpc_ctrl->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(lpc_ctrl->clk)) {
  dev_err(dev, "couldn't get clock\n");
  return PTR_ERR(lpc_ctrl->clk);
 }
 rc = clk_prepare_enable(lpc_ctrl->clk);
 if (rc) {
  dev_err(dev, "couldn't enable clock\n");
  return rc;
 }

 lpc_ctrl->miscdev.minor = MISC_DYNAMIC_MINOR;
 lpc_ctrl->miscdev.name = DEVICE_NAME;
 lpc_ctrl->miscdev.fops = &aspeed_lpc_ctrl_fops;
 lpc_ctrl->miscdev.parent = dev;
 rc = misc_register(&lpc_ctrl->miscdev);
 if (rc) {
  dev_err(dev, "Unable to register device\n");
  goto err;
 }

 return 0;

err:
 clk_disable_unprepare(lpc_ctrl->clk);
 return rc;
}
