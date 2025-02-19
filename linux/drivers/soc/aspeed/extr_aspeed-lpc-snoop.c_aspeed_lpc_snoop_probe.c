
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device {int of_node; TYPE_1__* parent; } ;
struct platform_device {struct device dev; } ;
struct aspeed_lpc_snoop {int regmap; } ;
struct TYPE_2__ {int of_node; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int aspeed_lpc_disable_snoop (struct aspeed_lpc_snoop*,int ) ;
 int aspeed_lpc_enable_snoop (struct aspeed_lpc_snoop*,struct device*,int,int ) ;
 int aspeed_lpc_snoop_config_irq (struct aspeed_lpc_snoop*,struct platform_device*) ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct aspeed_lpc_snoop*) ;
 struct aspeed_lpc_snoop* devm_kzalloc (struct device*,int,int ) ;
 int of_property_read_u32_index (int ,char*,int,int *) ;
 int syscon_node_to_regmap (int ) ;

__attribute__((used)) static int aspeed_lpc_snoop_probe(struct platform_device *pdev)
{
 struct aspeed_lpc_snoop *lpc_snoop;
 struct device *dev;
 u32 port;
 int rc;

 dev = &pdev->dev;

 lpc_snoop = devm_kzalloc(dev, sizeof(*lpc_snoop), GFP_KERNEL);
 if (!lpc_snoop)
  return -ENOMEM;

 lpc_snoop->regmap = syscon_node_to_regmap(
   pdev->dev.parent->of_node);
 if (IS_ERR(lpc_snoop->regmap)) {
  dev_err(dev, "Couldn't get regmap\n");
  return -ENODEV;
 }

 dev_set_drvdata(&pdev->dev, lpc_snoop);

 rc = of_property_read_u32_index(dev->of_node, "snoop-ports", 0, &port);
 if (rc) {
  dev_err(dev, "no snoop ports configured\n");
  return -ENODEV;
 }

 rc = aspeed_lpc_snoop_config_irq(lpc_snoop, pdev);
 if (rc)
  return rc;

 rc = aspeed_lpc_enable_snoop(lpc_snoop, dev, 0, port);
 if (rc)
  return rc;


 if (of_property_read_u32_index(dev->of_node, "snoop-ports",
           1, &port) == 0) {
  rc = aspeed_lpc_enable_snoop(lpc_snoop, dev, 1, port);
  if (rc)
   aspeed_lpc_disable_snoop(lpc_snoop, 0);
 }

 return rc;
}
