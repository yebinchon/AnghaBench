
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {int notifier_call; } ;
struct da9150_charger {int * ibus_chan; int * vbus_chan; int * tjunc_chan; int * vbat_chan; int * usb; TYPE_1__ otg_nb; int usb_phy; int otg_work; int * supply_online; int * battery; struct device* dev; struct da9150* da9150; } ;
struct da9150 {int dummy; } ;


 int DA9150_STATUS_H ;

 int DA9150_VBUS_STAT_MASK ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int *) ;
 int IS_ERR_OR_NULL (int ) ;
 int PTR_ERR (int *) ;
 int USB_PHY_TYPE_USB2 ;
 int battery_desc ;
 int da9150_charger_chg_irq ;
 int da9150_charger_otg_ncb ;
 int da9150_charger_otg_work ;
 int da9150_charger_register_irq (struct platform_device*,int ,char*) ;
 int da9150_charger_tjunc_irq ;
 int da9150_charger_unregister_irq (struct platform_device*,char*) ;
 int da9150_charger_vbus_irq ;
 int da9150_charger_vfault_irq ;
 int da9150_reg_read (struct da9150*,int ) ;
 struct da9150* dev_get_drvdata (int ) ;
 int dev_warn (struct device*,char*,int) ;
 struct da9150_charger* devm_kzalloc (struct device*,int,int ) ;
 int devm_usb_get_phy (struct device*,int ) ;
 void* iio_channel_get (struct device*,char*) ;
 int iio_channel_release (int *) ;
 int platform_set_drvdata (struct platform_device*,struct da9150_charger*) ;
 void* power_supply_register (struct device*,int *,int *) ;
 int power_supply_unregister (int *) ;
 int usb_desc ;
 int usb_register_notifier (int ,TYPE_1__*) ;
 int usb_unregister_notifier (int ,TYPE_1__*) ;

__attribute__((used)) static int da9150_charger_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct da9150 *da9150 = dev_get_drvdata(dev->parent);
 struct da9150_charger *charger;
 u8 reg;
 int ret;

 charger = devm_kzalloc(dev, sizeof(struct da9150_charger), GFP_KERNEL);
 if (!charger)
  return -ENOMEM;

 platform_set_drvdata(pdev, charger);
 charger->da9150 = da9150;
 charger->dev = dev;


 charger->ibus_chan = iio_channel_get(dev, "CHAN_IBUS");
 if (IS_ERR(charger->ibus_chan)) {
  ret = PTR_ERR(charger->ibus_chan);
  goto ibus_chan_fail;
 }

 charger->vbus_chan = iio_channel_get(dev, "CHAN_VBUS");
 if (IS_ERR(charger->vbus_chan)) {
  ret = PTR_ERR(charger->vbus_chan);
  goto vbus_chan_fail;
 }

 charger->tjunc_chan = iio_channel_get(dev, "CHAN_TJUNC");
 if (IS_ERR(charger->tjunc_chan)) {
  ret = PTR_ERR(charger->tjunc_chan);
  goto tjunc_chan_fail;
 }

 charger->vbat_chan = iio_channel_get(dev, "CHAN_VBAT");
 if (IS_ERR(charger->vbat_chan)) {
  ret = PTR_ERR(charger->vbat_chan);
  goto vbat_chan_fail;
 }


 charger->usb = power_supply_register(dev, &usb_desc, ((void*)0));
 if (IS_ERR(charger->usb)) {
  ret = PTR_ERR(charger->usb);
  goto usb_fail;
 }

 charger->battery = power_supply_register(dev, &battery_desc, ((void*)0));
 if (IS_ERR(charger->battery)) {
  ret = PTR_ERR(charger->battery);
  goto battery_fail;
 }


 reg = da9150_reg_read(da9150, DA9150_STATUS_H);

 switch (reg & DA9150_VBUS_STAT_MASK) {
 case 129:
 case 128:
  charger->supply_online = charger->battery;
  break;
 case 130:
  charger->supply_online = charger->usb;
  break;
 default:
  dev_warn(dev, "Unknown VBUS state - reg = 0x%x\n", reg);
  charger->supply_online = ((void*)0);
  break;
 }


 charger->usb_phy = devm_usb_get_phy(dev, USB_PHY_TYPE_USB2);
 if (!IS_ERR_OR_NULL(charger->usb_phy)) {
  INIT_WORK(&charger->otg_work, da9150_charger_otg_work);
  charger->otg_nb.notifier_call = da9150_charger_otg_ncb;
  usb_register_notifier(charger->usb_phy, &charger->otg_nb);
 }


 ret = da9150_charger_register_irq(pdev, da9150_charger_chg_irq,
       "CHG_STATUS");
 if (ret < 0)
  goto chg_irq_fail;

 ret = da9150_charger_register_irq(pdev, da9150_charger_tjunc_irq,
       "CHG_TJUNC");
 if (ret < 0)
  goto tjunc_irq_fail;

 ret = da9150_charger_register_irq(pdev, da9150_charger_vfault_irq,
       "CHG_VFAULT");
 if (ret < 0)
  goto vfault_irq_fail;

 ret = da9150_charger_register_irq(pdev, da9150_charger_vbus_irq,
       "CHG_VBUS");
 if (ret < 0)
  goto vbus_irq_fail;

 return 0;


vbus_irq_fail:
 da9150_charger_unregister_irq(pdev, "CHG_VFAULT");
vfault_irq_fail:
 da9150_charger_unregister_irq(pdev, "CHG_TJUNC");
tjunc_irq_fail:
 da9150_charger_unregister_irq(pdev, "CHG_STATUS");
chg_irq_fail:
 if (!IS_ERR_OR_NULL(charger->usb_phy))
  usb_unregister_notifier(charger->usb_phy, &charger->otg_nb);
battery_fail:
 power_supply_unregister(charger->usb);

usb_fail:
 iio_channel_release(charger->vbat_chan);

vbat_chan_fail:
 iio_channel_release(charger->tjunc_chan);

tjunc_chan_fail:
 iio_channel_release(charger->vbus_chan);

vbus_chan_fail:
 iio_channel_release(charger->ibus_chan);

ibus_chan_fail:
 return ret;
}
