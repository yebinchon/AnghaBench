
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct arche_apb_ctrl_drvdata {int init_disabled; int state; } ;


 int ARCHE_PLATFORM_STATE_OFF ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int apb_ctrl_get_devtree_data (struct platform_device*,struct arche_apb_ctrl_drvdata*) ;
 int dev_attr_state ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int device_create_file (struct device*,int *) ;
 struct arche_apb_ctrl_drvdata* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ of_property_read_bool (int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct arche_apb_ctrl_drvdata*) ;

__attribute__((used)) static int arche_apb_ctrl_probe(struct platform_device *pdev)
{
 int ret;
 struct arche_apb_ctrl_drvdata *apb;
 struct device *dev = &pdev->dev;

 apb = devm_kzalloc(&pdev->dev, sizeof(*apb), GFP_KERNEL);
 if (!apb)
  return -ENOMEM;

 ret = apb_ctrl_get_devtree_data(pdev, apb);
 if (ret) {
  dev_err(dev, "failed to get apb devicetree data %d\n", ret);
  return ret;
 }


 apb->state = ARCHE_PLATFORM_STATE_OFF;

 if (of_property_read_bool(pdev->dev.of_node, "arche,init-disable"))
  apb->init_disabled = 1;

 platform_set_drvdata(pdev, apb);


 ret = device_create_file(dev, &dev_attr_state);
 if (ret) {
  dev_err(dev, "failed to create state file in sysfs\n");
  return ret;
 }

 dev_info(&pdev->dev, "Device registered successfully\n");
 return 0;
}
