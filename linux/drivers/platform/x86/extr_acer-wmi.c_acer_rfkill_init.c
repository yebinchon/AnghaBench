
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ACERWMID_EVENT_GUID ;
 int ACER_CAP_BLUETOOTH ;
 int ACER_CAP_THREEG ;
 int ACER_CAP_WIRELESS ;
 int HZ ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RFKILL_TYPE_BLUETOOTH ;
 int RFKILL_TYPE_WLAN ;
 int RFKILL_TYPE_WWAN ;
 int acer_rfkill_register (struct device*,int ,char*,int) ;
 int acer_rfkill_work ;
 int bluetooth_rfkill ;
 scalar_t__ ec_raw_mode ;
 scalar_t__ has_cap (int) ;
 int rfkill_destroy (int ) ;
 int rfkill_inited ;
 int rfkill_unregister (int ) ;
 int round_jiffies_relative (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int threeg_rfkill ;
 int wireless_rfkill ;
 int wmi_has_guid (int ) ;

__attribute__((used)) static int acer_rfkill_init(struct device *dev)
{
 int err;

 if (has_cap(ACER_CAP_WIRELESS)) {
  wireless_rfkill = acer_rfkill_register(dev, RFKILL_TYPE_WLAN,
   "acer-wireless", ACER_CAP_WIRELESS);
  if (IS_ERR(wireless_rfkill)) {
   err = PTR_ERR(wireless_rfkill);
   goto error_wireless;
  }
 }

 if (has_cap(ACER_CAP_BLUETOOTH)) {
  bluetooth_rfkill = acer_rfkill_register(dev,
   RFKILL_TYPE_BLUETOOTH, "acer-bluetooth",
   ACER_CAP_BLUETOOTH);
  if (IS_ERR(bluetooth_rfkill)) {
   err = PTR_ERR(bluetooth_rfkill);
   goto error_bluetooth;
  }
 }

 if (has_cap(ACER_CAP_THREEG)) {
  threeg_rfkill = acer_rfkill_register(dev,
   RFKILL_TYPE_WWAN, "acer-threeg",
   ACER_CAP_THREEG);
  if (IS_ERR(threeg_rfkill)) {
   err = PTR_ERR(threeg_rfkill);
   goto error_threeg;
  }
 }

 rfkill_inited = 1;

 if ((ec_raw_mode || !wmi_has_guid(ACERWMID_EVENT_GUID)) &&
     has_cap(ACER_CAP_WIRELESS | ACER_CAP_BLUETOOTH | ACER_CAP_THREEG))
  schedule_delayed_work(&acer_rfkill_work,
   round_jiffies_relative(HZ));

 return 0;

error_threeg:
 if (has_cap(ACER_CAP_BLUETOOTH)) {
  rfkill_unregister(bluetooth_rfkill);
  rfkill_destroy(bluetooth_rfkill);
 }
error_bluetooth:
 if (has_cap(ACER_CAP_WIRELESS)) {
  rfkill_unregister(wireless_rfkill);
  rfkill_destroy(wireless_rfkill);
 }
error_wireless:
 return err;
}
