
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int attr; } ;
struct TYPE_3__ {int hotkey_tablet; } ;


 int TP_HOTKEY_TABLET_MASK ;
 int TP_HOTKEY_TABLET_USES_GMMS ;
 int TP_HOTKEY_TABLET_USES_MHKG ;
 scalar_t__ acpi_evalf (int ,int*,char*,char*,...) ;
 int add_to_attr_set (int ,int *) ;
 TYPE_2__ dev_attr_hotkey_tablet_mode ;
 int hkey_handle ;
 int hotkey_dev_attributes ;
 int hotkey_gmms_get_tablet_mode (int,int*) ;
 int pr_info (char*,char*,char*) ;
 TYPE_1__ tp_features ;

__attribute__((used)) static int hotkey_init_tablet_mode(void)
{
 int in_tablet_mode = 0, res;
 char *type = ((void*)0);

 if (acpi_evalf(hkey_handle, &res, "GMMS", "qdd", 0)) {
  int has_tablet_mode;

  in_tablet_mode = hotkey_gmms_get_tablet_mode(res,
            &has_tablet_mode);
  if (has_tablet_mode)
   tp_features.hotkey_tablet = TP_HOTKEY_TABLET_USES_GMMS;
  type = "GMMS";
 } else if (acpi_evalf(hkey_handle, &res, "MHKG", "qd")) {

  tp_features.hotkey_tablet = TP_HOTKEY_TABLET_USES_MHKG;
  in_tablet_mode = !!(res & TP_HOTKEY_TABLET_MASK);
  type = "MHKG";
 }

 if (!tp_features.hotkey_tablet)
  return 0;

 pr_info("Tablet mode switch found (type: %s), currently in %s mode\n",
  type, in_tablet_mode ? "tablet" : "laptop");

 res = add_to_attr_set(hotkey_dev_attributes,
         &dev_attr_hotkey_tablet_mode.attr);
 if (res)
  return -1;

 return in_tablet_mode;
}
