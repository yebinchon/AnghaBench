
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct toshiba_acpi_dev {int wwan_rfk; int killswitch; TYPE_1__* acpi_dev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int RFKILL_TYPE_WWAN ;
 int pr_err (char*) ;
 int rfkill_alloc (char*,int *,int ,int *,struct toshiba_acpi_dev*) ;
 int rfkill_destroy (int ) ;
 int rfkill_register (int ) ;
 int rfkill_set_hw_state (int ,int) ;
 int toshiba_wireless_status (struct toshiba_acpi_dev*) ;
 int wwan_rfk_ops ;

__attribute__((used)) static int toshiba_acpi_setup_wwan_rfkill(struct toshiba_acpi_dev *dev)
{
 int ret = toshiba_wireless_status(dev);

 if (ret)
  return ret;

 dev->wwan_rfk = rfkill_alloc("Toshiba WWAN",
         &dev->acpi_dev->dev,
         RFKILL_TYPE_WWAN,
         &wwan_rfk_ops,
         dev);
 if (!dev->wwan_rfk) {
  pr_err("Unable to allocate WWAN rfkill device\n");
  return -ENOMEM;
 }

 rfkill_set_hw_state(dev->wwan_rfk, !dev->killswitch);

 ret = rfkill_register(dev->wwan_rfk);
 if (ret) {
  pr_err("Unable to register WWAN rfkill device\n");
  rfkill_destroy(dev->wwan_rfk);
 }

 return ret;
}
