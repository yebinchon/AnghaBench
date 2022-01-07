
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {scalar_t__ ec_delay; } ;


 int ENOMEM ;
 int HZ ;
 int RFKILL_TYPE_BLUETOOTH ;
 int RFKILL_TYPE_WLAN ;
 int RFKILL_TYPE_WWAN ;
 int get_wireless_state_ec_standard () ;
 int msi_rfkill_init ;
 int msi_rfkill_work ;
 TYPE_1__* quirks ;
 scalar_t__ rfk_bluetooth ;
 scalar_t__ rfk_threeg ;
 scalar_t__ rfk_wlan ;
 scalar_t__ rfkill_alloc (char*,int *,int ,int *,int *) ;
 int rfkill_bluetooth_ops ;
 int rfkill_destroy (scalar_t__) ;
 int rfkill_register (scalar_t__) ;
 int rfkill_threeg_ops ;
 int rfkill_unregister (scalar_t__) ;
 int rfkill_wlan_ops ;
 int round_jiffies_relative (int) ;
 int schedule_delayed_work (int *,int ) ;
 int schedule_work (int *) ;
 scalar_t__ threeg_exists ;

__attribute__((used)) static int rfkill_init(struct platform_device *sdev)
{

 int retval;


 get_wireless_state_ec_standard();

 rfk_bluetooth = rfkill_alloc("msi-bluetooth", &sdev->dev,
    RFKILL_TYPE_BLUETOOTH,
    &rfkill_bluetooth_ops, ((void*)0));
 if (!rfk_bluetooth) {
  retval = -ENOMEM;
  goto err_bluetooth;
 }
 retval = rfkill_register(rfk_bluetooth);
 if (retval)
  goto err_bluetooth;

 rfk_wlan = rfkill_alloc("msi-wlan", &sdev->dev, RFKILL_TYPE_WLAN,
    &rfkill_wlan_ops, ((void*)0));
 if (!rfk_wlan) {
  retval = -ENOMEM;
  goto err_wlan;
 }
 retval = rfkill_register(rfk_wlan);
 if (retval)
  goto err_wlan;

 if (threeg_exists) {
  rfk_threeg = rfkill_alloc("msi-threeg", &sdev->dev,
    RFKILL_TYPE_WWAN, &rfkill_threeg_ops, ((void*)0));
  if (!rfk_threeg) {
   retval = -ENOMEM;
   goto err_threeg;
  }
  retval = rfkill_register(rfk_threeg);
  if (retval)
   goto err_threeg;
 }


 if (quirks->ec_delay) {
  schedule_delayed_work(&msi_rfkill_init,
   round_jiffies_relative(1 * HZ));
 } else
  schedule_work(&msi_rfkill_work);

 return 0;

err_threeg:
 rfkill_destroy(rfk_threeg);
 if (rfk_wlan)
  rfkill_unregister(rfk_wlan);
err_wlan:
 rfkill_destroy(rfk_wlan);
 if (rfk_bluetooth)
  rfkill_unregister(rfk_bluetooth);
err_bluetooth:
 rfkill_destroy(rfk_bluetooth);

 return retval;
}
