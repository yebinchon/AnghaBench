
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_wmi {int battery_rsoc_available; } ;


 int ASUS_WMI_DEVID_RSOC ;
 scalar_t__ asus_wmi_dev_is_present (struct asus_wmi*,int ) ;
 int battery_hook ;
 int battery_hook_register (int *) ;

__attribute__((used)) static void asus_wmi_battery_init(struct asus_wmi *asus)
{
 asus->battery_rsoc_available = 0;
 if (asus_wmi_dev_is_present(asus, ASUS_WMI_DEVID_RSOC)) {
  asus->battery_rsoc_available = 1;
  battery_hook_register(&battery_hook);
 }
}
