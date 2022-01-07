
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {int dummy; } ;


 int CM_ASL_WLAN ;
 int get_acpi (struct eeepc_laptop*,int ) ;

__attribute__((used)) static bool eeepc_wlan_rfkill_blocked(struct eeepc_laptop *eeepc)
{
 if (get_acpi(eeepc, CM_ASL_WLAN) == 1)
  return 0;
 return 1;
}
