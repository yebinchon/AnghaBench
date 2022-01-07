
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int of_node; } ;


 int axp20x_set_dcdc_freq (struct platform_device*,int ) ;
 int dev_err (TYPE_2__*,char*,int) ;
 int dev_warn (TYPE_2__*,char*) ;
 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 struct device_node* of_node_get (int ) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int axp20x_regulator_parse_dt(struct platform_device *pdev)
{
 struct device_node *np, *regulators;
 int ret;
 u32 dcdcfreq = 0;

 np = of_node_get(pdev->dev.parent->of_node);
 if (!np)
  return 0;

 regulators = of_get_child_by_name(np, "regulators");
 if (!regulators) {
  dev_warn(&pdev->dev, "regulators node not found\n");
 } else {
  of_property_read_u32(regulators, "x-powers,dcdc-freq", &dcdcfreq);
  ret = axp20x_set_dcdc_freq(pdev, dcdcfreq);
  if (ret < 0) {
   dev_err(&pdev->dev, "Error setting dcdc frequency: %d\n", ret);
   return ret;
  }

  of_node_put(regulators);
 }

 return 0;
}
