
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct da9150_charger {int vbat_chan; int tjunc_chan; int vbus_chan; int ibus_chan; int usb; int battery; int otg_nb; int usb_phy; } ;


 int IS_ERR_OR_NULL (int ) ;
 int free_irq (int,struct da9150_charger*) ;
 int iio_channel_release (int ) ;
 struct da9150_charger* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int power_supply_unregister (int ) ;
 int usb_unregister_notifier (int ,int *) ;

__attribute__((used)) static int da9150_charger_remove(struct platform_device *pdev)
{
 struct da9150_charger *charger = platform_get_drvdata(pdev);
 int irq;


 irq = platform_get_irq_byname(pdev, "CHG_VBUS");
 free_irq(irq, charger);

 irq = platform_get_irq_byname(pdev, "CHG_VFAULT");
 free_irq(irq, charger);

 irq = platform_get_irq_byname(pdev, "CHG_TJUNC");
 free_irq(irq, charger);

 irq = platform_get_irq_byname(pdev, "CHG_STATUS");
 free_irq(irq, charger);

 if (!IS_ERR_OR_NULL(charger->usb_phy))
  usb_unregister_notifier(charger->usb_phy, &charger->otg_nb);

 power_supply_unregister(charger->battery);
 power_supply_unregister(charger->usb);


 iio_channel_release(charger->ibus_chan);
 iio_channel_release(charger->vbus_chan);
 iio_channel_release(charger->tjunc_chan);
 iio_channel_release(charger->vbat_chan);

 return 0;
}
