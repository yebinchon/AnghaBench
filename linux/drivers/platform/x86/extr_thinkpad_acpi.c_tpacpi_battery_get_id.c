
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ battery_force_primary; } ;


 int BAT_PRIMARY ;
 int BAT_SECONDARY ;
 int pr_warn (char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 TYPE_1__ tp_features ;

__attribute__((used)) static int tpacpi_battery_get_id(const char *battery_name)
{

 if (strcmp(battery_name, "BAT0") == 0 ||
     tp_features.battery_force_primary)
  return BAT_PRIMARY;
 if (strcmp(battery_name, "BAT1") == 0)
  return BAT_SECONDARY;





 pr_warn("unknown battery %s, assuming primary", battery_name);
 return BAT_PRIMARY;
}
