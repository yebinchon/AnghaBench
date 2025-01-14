
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350_charger_policy {int fast_limit_USB_mA; int trickle_start_mV; int charge_mV; int trickle_charge_USB_mA; int fast_limit_mA; int trickle_charge_mA; int charge_timeout; int eoc_mA; } ;
struct wm8350 {int dev; } ;


 int EINVAL ;
 int WM8350_BATTERY_CHARGER_CONTROL_1 ;
 int WM8350_BATTERY_CHARGER_CONTROL_2 ;
 int WM8350_CHG_ENA_R168 ;
 int WM8350_CHG_EOC_mA (int ) ;
 int WM8350_CHG_FAST_LIMIT_mA (int) ;
 int WM8350_CHG_FAST_USB_THROTTLE ;
 int WM8350_CHG_TRICKLE_TEMP_CHOKE ;
 int WM8350_CHG_TRICKLE_USB_CHOKE ;
 int WM8350_USB_SUPPLY ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int wm8350_charge_time_min (struct wm8350*,int ) ;
 int wm8350_get_supplies (struct wm8350*) ;
 int wm8350_reg_lock (struct wm8350*) ;
 int wm8350_reg_read (struct wm8350*,int ) ;
 int wm8350_reg_unlock (struct wm8350*) ;
 int wm8350_reg_write (struct wm8350*,int ,int) ;

__attribute__((used)) static int wm8350_charger_config(struct wm8350 *wm8350,
     struct wm8350_charger_policy *policy)
{
 u16 reg, eoc_mA, fast_limit_mA;

 if (!policy) {
  dev_warn(wm8350->dev,
    "No charger policy, charger not configured.\n");
  return -EINVAL;
 }


 if (policy->fast_limit_USB_mA > 500) {
  dev_err(wm8350->dev, "USB fast charge > 500mA\n");
  return -EINVAL;
 }

 eoc_mA = WM8350_CHG_EOC_mA(policy->eoc_mA);

 wm8350_reg_unlock(wm8350);

 reg = wm8350_reg_read(wm8350, WM8350_BATTERY_CHARGER_CONTROL_1)
  & WM8350_CHG_ENA_R168;
 wm8350_reg_write(wm8350, WM8350_BATTERY_CHARGER_CONTROL_1,
    reg | eoc_mA | policy->trickle_start_mV |
    WM8350_CHG_TRICKLE_TEMP_CHOKE |
    WM8350_CHG_TRICKLE_USB_CHOKE |
    WM8350_CHG_FAST_USB_THROTTLE);

 if (wm8350_get_supplies(wm8350) & WM8350_USB_SUPPLY) {
  fast_limit_mA =
   WM8350_CHG_FAST_LIMIT_mA(policy->fast_limit_USB_mA);
  wm8350_reg_write(wm8350, WM8350_BATTERY_CHARGER_CONTROL_2,
       policy->charge_mV | policy->trickle_charge_USB_mA |
       fast_limit_mA | wm8350_charge_time_min(wm8350,
      policy->charge_timeout));

 } else {
  fast_limit_mA =
   WM8350_CHG_FAST_LIMIT_mA(policy->fast_limit_mA);
  wm8350_reg_write(wm8350, WM8350_BATTERY_CHARGER_CONTROL_2,
       policy->charge_mV | policy->trickle_charge_mA |
       fast_limit_mA | wm8350_charge_time_min(wm8350,
      policy->charge_timeout));
 }

 wm8350_reg_lock(wm8350);
 return 0;
}
