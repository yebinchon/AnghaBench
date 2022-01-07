
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct asus_laptop {int ledd_status; int light_switch; int light_level; int handle; scalar_t__ is_pega_lucid; void* wled_type; void* bled_type; TYPE_2__* device; } ;
struct TYPE_3__ {int present; } ;
struct TYPE_4__ {TYPE_1__ status; } ;


 int ENODEV ;
 int METHOD_ALS_CONTROL ;
 int METHOD_ALS_LEVEL ;
 int METHOD_KBD_LIGHT_SET ;
 void* TYPE_LED ;
 void* TYPE_RFKILL ;
 int acpi_bus_get_status (TYPE_2__*) ;
 int acpi_check_handle (int ,int ,int *) ;
 int als_status ;
 int asus_als_level (struct asus_laptop*,int) ;
 int asus_als_switch (struct asus_laptop*,int) ;
 int asus_bluetooth_set (struct asus_laptop*,int) ;
 int asus_kled_set (struct asus_laptop*,int) ;
 int asus_laptop_get_info (struct asus_laptop*) ;
 int asus_wimax_set (struct asus_laptop*,int) ;
 int asus_wlan_set (struct asus_laptop*,int) ;
 int asus_wwan_set (struct asus_laptop*,int) ;
 int bled_type ;
 scalar_t__ bluetooth_status ;
 int pr_err (char*) ;
 int strcmp (int ,char*) ;
 scalar_t__ wimax_status ;
 scalar_t__ wlan_status ;
 int wled_type ;
 scalar_t__ wwan_status ;

__attribute__((used)) static int asus_acpi_init(struct asus_laptop *asus)
{
 int result = 0;

 result = acpi_bus_get_status(asus->device);
 if (result)
  return result;
 if (!asus->device->status.present) {
  pr_err("Hotkey device not present, aborting\n");
  return -ENODEV;
 }

 result = asus_laptop_get_info(asus);
 if (result)
  return result;

 if (!strcmp(bled_type, "led"))
  asus->bled_type = TYPE_LED;
 else if (!strcmp(bled_type, "rfkill"))
  asus->bled_type = TYPE_RFKILL;

 if (!strcmp(wled_type, "led"))
  asus->wled_type = TYPE_LED;
 else if (!strcmp(wled_type, "rfkill"))
  asus->wled_type = TYPE_RFKILL;

 if (bluetooth_status >= 0)
  asus_bluetooth_set(asus, !!bluetooth_status);

 if (wlan_status >= 0)
  asus_wlan_set(asus, !!wlan_status);

 if (wimax_status >= 0)
  asus_wimax_set(asus, !!wimax_status);

 if (wwan_status >= 0)
  asus_wwan_set(asus, !!wwan_status);


 if (!acpi_check_handle(asus->handle, METHOD_KBD_LIGHT_SET, ((void*)0)))
  asus_kled_set(asus, 1);


 asus->ledd_status = 0xFFF;


 asus->light_switch = !!als_status;
 asus->light_level = 5;

 if (asus->is_pega_lucid) {
  asus_als_switch(asus, asus->light_switch);
 } else if (!acpi_check_handle(asus->handle, METHOD_ALS_CONTROL, ((void*)0)) &&
     !acpi_check_handle(asus->handle, METHOD_ALS_LEVEL, ((void*)0))) {
  asus_als_switch(asus, asus->light_switch);
  asus_als_level(asus, asus->light_level);
 }

 return result;
}
