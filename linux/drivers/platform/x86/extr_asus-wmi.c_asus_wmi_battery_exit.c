
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_wmi {scalar_t__ battery_rsoc_available; } ;


 int battery_hook ;
 int battery_hook_unregister (int *) ;

__attribute__((used)) static void asus_wmi_battery_exit(struct asus_wmi *asus)
{
 if (asus->battery_rsoc_available)
  battery_hook_unregister(&battery_hook);
}
