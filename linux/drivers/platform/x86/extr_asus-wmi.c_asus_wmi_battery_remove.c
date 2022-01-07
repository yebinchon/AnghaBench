
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dev; } ;


 int dev_attr_charge_control_end_threshold ;
 int device_remove_file (int *,int *) ;

__attribute__((used)) static int asus_wmi_battery_remove(struct power_supply *battery)
{
 device_remove_file(&battery->dev,
      &dev_attr_charge_control_end_threshold);
 return 0;
}
