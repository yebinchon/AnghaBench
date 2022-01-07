
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct asus_wmi_driver {int panel_power; TYPE_1__* quirks; } ;
struct TYPE_3__ {int wapf; int hotplug_wireless; } ;


 int FB_BLANK_UNBLANK ;
 int asus_quirks ;
 int dmi_check_system (int ) ;
 int hotplug_wireless ;
 TYPE_1__ quirk_asus_unknown ;
 TYPE_1__* quirks ;

__attribute__((used)) static void eeepc_wmi_quirks(struct asus_wmi_driver *driver)
{
 quirks = &quirk_asus_unknown;
 quirks->hotplug_wireless = hotplug_wireless;

 dmi_check_system(asus_quirks);

 driver->quirks = quirks;
 driver->quirks->wapf = -1;
 driver->panel_power = FB_BLANK_UNBLANK;
}
