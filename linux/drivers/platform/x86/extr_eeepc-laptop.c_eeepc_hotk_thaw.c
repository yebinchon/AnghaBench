
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {scalar_t__ wlan_rfkill; } ;
struct device {int dummy; } ;


 int CM_ASL_WLAN ;
 struct eeepc_laptop* dev_get_drvdata (struct device*) ;
 int get_acpi (struct eeepc_laptop*,int ) ;
 int set_acpi (struct eeepc_laptop*,int ,int) ;

__attribute__((used)) static int eeepc_hotk_thaw(struct device *device)
{
 struct eeepc_laptop *eeepc = dev_get_drvdata(device);

 if (eeepc->wlan_rfkill) {
  int wlan;






  wlan = get_acpi(eeepc, CM_ASL_WLAN);
  if (wlan >= 0)
   set_acpi(eeepc, CM_ASL_WLAN, wlan);
 }

 return 0;
}
