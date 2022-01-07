
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct platform_device {struct device dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int axxia_restart_nb ;
 int dev_err (struct device*,char*,int) ;
 int pr_err (char*,int ) ;
 int register_restart_handler (int *) ;
 int syscon ;
 int syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int axxia_reset_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 int err;

 syscon = syscon_regmap_lookup_by_phandle(dev->of_node, "syscon");
 if (IS_ERR(syscon)) {
  pr_err("%pOFn: syscon lookup failed\n", dev->of_node);
  return PTR_ERR(syscon);
 }

 err = register_restart_handler(&axxia_restart_nb);
 if (err)
  dev_err(dev, "cannot register restart handler (err=%d)\n", err);

 return err;
}
