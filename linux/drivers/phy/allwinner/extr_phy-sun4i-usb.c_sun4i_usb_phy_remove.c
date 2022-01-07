
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_usb_phy_data {scalar_t__ id_det_irq; scalar_t__ vbus_det_irq; int detect; int vbus_power_nb; scalar_t__ vbus_power_nb_registered; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int cancel_delayed_work_sync (int *) ;
 struct sun4i_usb_phy_data* dev_get_drvdata (struct device*) ;
 int devm_free_irq (struct device*,scalar_t__,struct sun4i_usb_phy_data*) ;
 int power_supply_unreg_notifier (int *) ;

__attribute__((used)) static int sun4i_usb_phy_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct sun4i_usb_phy_data *data = dev_get_drvdata(dev);

 if (data->vbus_power_nb_registered)
  power_supply_unreg_notifier(&data->vbus_power_nb);
 if (data->id_det_irq > 0)
  devm_free_irq(dev, data->id_det_irq, data);
 if (data->vbus_det_irq > 0)
  devm_free_irq(dev, data->vbus_det_irq, data);

 cancel_delayed_work_sync(&data->detect);

 return 0;
}
