
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_syscfg {int regmap; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int register_restart_handler (int *) ;
 int st_reset_of_match ;
 int st_restart_nb ;
 struct reset_syscfg* st_restart_syscfg ;
 int syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int st_reset_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 const struct of_device_id *match;
 struct device *dev = &pdev->dev;

 match = of_match_device(st_reset_of_match, dev);
 if (!match)
  return -ENODEV;

 st_restart_syscfg = (struct reset_syscfg *)match->data;

 st_restart_syscfg->regmap =
  syscon_regmap_lookup_by_phandle(np, "st,syscfg");
 if (IS_ERR(st_restart_syscfg->regmap)) {
  dev_err(dev, "No syscfg phandle specified\n");
  return PTR_ERR(st_restart_syscfg->regmap);
 }

 return register_restart_handler(&st_restart_nb);
}
