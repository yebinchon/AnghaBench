
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {int shutdown; int init; } ;
struct TYPE_3__ {TYPE_2__ phy; } ;
struct am335x_phy {scalar_t__ id; TYPE_1__ usb_phy_gen; int dr_mode; int phy_ctrl; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int am335x_get_phy_control (struct device*) ;
 int am335x_init ;
 int am335x_shutdown ;
 int dev_err (struct device*,char*,scalar_t__) ;
 int device_init_wakeup (struct device*,int) ;
 int device_set_wakeup_enable (struct device*,int) ;
 struct am335x_phy* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ of_alias_get_id (int ,char*) ;
 int of_usb_get_dr_mode_by_phy (int ,int) ;
 int phy_ctrl_power (int ,int,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct am335x_phy*) ;
 int usb_add_phy_dev (TYPE_2__*) ;
 int usb_phy_gen_create_phy (struct device*,TYPE_1__*,int *) ;

__attribute__((used)) static int am335x_phy_probe(struct platform_device *pdev)
{
 struct am335x_phy *am_phy;
 struct device *dev = &pdev->dev;
 int ret;

 am_phy = devm_kzalloc(dev, sizeof(*am_phy), GFP_KERNEL);
 if (!am_phy)
  return -ENOMEM;

 am_phy->phy_ctrl = am335x_get_phy_control(dev);
 if (!am_phy->phy_ctrl)
  return -EPROBE_DEFER;

 am_phy->id = of_alias_get_id(pdev->dev.of_node, "phy");
 if (am_phy->id < 0) {
  dev_err(&pdev->dev, "Missing PHY id: %d\n", am_phy->id);
  return am_phy->id;
 }

 am_phy->dr_mode = of_usb_get_dr_mode_by_phy(pdev->dev.of_node, -1);

 ret = usb_phy_gen_create_phy(dev, &am_phy->usb_phy_gen, ((void*)0));
 if (ret)
  return ret;

 am_phy->usb_phy_gen.phy.init = am335x_init;
 am_phy->usb_phy_gen.phy.shutdown = am335x_shutdown;

 platform_set_drvdata(pdev, am_phy);
 device_init_wakeup(dev, 1);
 device_set_wakeup_enable(dev, 0);
 phy_ctrl_power(am_phy->phy_ctrl, am_phy->id, am_phy->dr_mode, 0);

 return usb_add_phy_dev(&am_phy->usb_phy_gen.phy);
}
