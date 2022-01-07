
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct asus_wmi_driver {int panel_power; TYPE_1__* quirks; } ;
struct TYPE_3__ {int wapf; scalar_t__ i8042_filter; } ;


 int FB_BLANK_UNBLANK ;
 int asus_quirks ;
 int dmi_check_system (int ) ;
 int i8042_install_filter (scalar_t__) ;
 int pr_info (char*) ;
 int pr_warn (char*) ;
 TYPE_1__ quirk_asus_unknown ;
 TYPE_1__* quirks ;
 int wapf ;

__attribute__((used)) static void asus_nb_wmi_quirks(struct asus_wmi_driver *driver)
{
 int ret;

 quirks = &quirk_asus_unknown;
 dmi_check_system(asus_quirks);

 driver->quirks = quirks;
 driver->panel_power = FB_BLANK_UNBLANK;


 if (wapf != -1)
  quirks->wapf = wapf;
 else
  wapf = quirks->wapf;

 if (quirks->i8042_filter) {
  ret = i8042_install_filter(quirks->i8042_filter);
  if (ret) {
   pr_warn("Unable to install key filter\n");
   return;
  }
  pr_info("Using i8042 filter function for receiving events\n");
 }
}
