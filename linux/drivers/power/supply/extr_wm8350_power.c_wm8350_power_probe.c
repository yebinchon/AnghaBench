
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350_power {void* ac; void* battery; void* usb; struct wm8350_charger_policy* policy; } ;
struct wm8350_charger_policy {int dummy; } ;
struct wm8350 {int dev; struct wm8350_power power; } ;
struct platform_device {int dev; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int WM8350_CHG_ENA ;
 int WM8350_POWER_MGMT_5 ;
 int dev_attr_charger_state ;
 int dev_warn (int ,char*,int) ;
 int device_create_file (int *,int *) ;
 struct wm8350* platform_get_drvdata (struct platform_device*) ;
 void* power_supply_register (int *,int *,int *) ;
 int power_supply_unregister (void*) ;
 int wm8350_ac_desc ;
 int wm8350_battery_desc ;
 scalar_t__ wm8350_charger_config (struct wm8350*,struct wm8350_charger_policy*) ;
 int wm8350_init_charger (struct wm8350*) ;
 int wm8350_reg_lock (struct wm8350*) ;
 int wm8350_reg_unlock (struct wm8350*) ;
 int wm8350_set_bits (struct wm8350*,int ,int ) ;
 int wm8350_usb_desc ;

__attribute__((used)) static int wm8350_power_probe(struct platform_device *pdev)
{
 struct wm8350 *wm8350 = platform_get_drvdata(pdev);
 struct wm8350_power *power = &wm8350->power;
 struct wm8350_charger_policy *policy = power->policy;
 int ret;

 power->ac = power_supply_register(&pdev->dev, &wm8350_ac_desc, ((void*)0));
 if (IS_ERR(power->ac))
  return PTR_ERR(power->ac);

 power->battery = power_supply_register(&pdev->dev, &wm8350_battery_desc,
            ((void*)0));
 if (IS_ERR(power->battery)) {
  ret = PTR_ERR(power->battery);
  goto battery_failed;
 }

 power->usb = power_supply_register(&pdev->dev, &wm8350_usb_desc, ((void*)0));
 if (IS_ERR(power->usb)) {
  ret = PTR_ERR(power->usb);
  goto usb_failed;
 }

 ret = device_create_file(&pdev->dev, &dev_attr_charger_state);
 if (ret < 0)
  dev_warn(wm8350->dev, "failed to add charge sysfs: %d\n", ret);
 ret = 0;

 wm8350_init_charger(wm8350);
 if (wm8350_charger_config(wm8350, policy) == 0) {
  wm8350_reg_unlock(wm8350);
  wm8350_set_bits(wm8350, WM8350_POWER_MGMT_5, WM8350_CHG_ENA);
  wm8350_reg_lock(wm8350);
 }

 return ret;

usb_failed:
 power_supply_unregister(power->battery);
battery_failed:
 power_supply_unregister(power->ac);

 return ret;
}
