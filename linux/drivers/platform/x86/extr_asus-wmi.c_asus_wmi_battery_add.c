
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct power_supply {int dev; TYPE_1__* desc; } ;
struct TYPE_2__ {int name; } ;


 int ASUS_WMI_DEVID_RSOC ;
 int ENODEV ;
 int asus_wmi_set_devstate (int ,int,int *) ;
 int charge_end_threshold ;
 int dev_attr_charge_control_end_threshold ;
 scalar_t__ device_create_file (int *,int *) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int asus_wmi_battery_add(struct power_supply *battery)
{



 if (strcmp(battery->desc->name, "BAT0") != 0)
  return -ENODEV;

 if (device_create_file(&battery->dev,
     &dev_attr_charge_control_end_threshold))
  return -ENODEV;





 asus_wmi_set_devstate(ASUS_WMI_DEVID_RSOC, 100, ((void*)0));
 charge_end_threshold = 100;

 return 0;
}
