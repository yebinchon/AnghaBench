
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ns_thermal {int tz; int pvtmon; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ WARN_ON (int) ;
 int dev_of_node (struct device*) ;
 struct ns_thermal* devm_kzalloc (struct device*,int,int ) ;
 int devm_thermal_zone_of_sensor_register (struct device*,int ,struct ns_thermal*,int *) ;
 int iounmap (int ) ;
 int ns_thermal_ops ;
 int of_iomap (int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ns_thermal*) ;

__attribute__((used)) static int ns_thermal_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct ns_thermal *ns_thermal;

 ns_thermal = devm_kzalloc(dev, sizeof(*ns_thermal), GFP_KERNEL);
 if (!ns_thermal)
  return -ENOMEM;

 ns_thermal->pvtmon = of_iomap(dev_of_node(dev), 0);
 if (WARN_ON(!ns_thermal->pvtmon))
  return -ENOENT;

 ns_thermal->tz = devm_thermal_zone_of_sensor_register(dev, 0,
             ns_thermal,
             &ns_thermal_ops);
 if (IS_ERR(ns_thermal->tz)) {
  iounmap(ns_thermal->pvtmon);
  return PTR_ERR(ns_thermal->tz);
 }

 platform_set_drvdata(pdev, ns_thermal);

 return 0;
}
