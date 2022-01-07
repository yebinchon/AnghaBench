
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {int cpufv_disabled; int hotplug_disabled; } ;


 int DMI_PRODUCT_NAME ;
 char* dmi_get_system_info (int ) ;
 int pr_info (char*,...) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void eeepc_dmi_check(struct eeepc_laptop *eeepc)
{
 const char *model;

 model = dmi_get_system_info(DMI_PRODUCT_NAME);
 if (!model)
  return;
 if (strcmp(model, "701") == 0 || strcmp(model, "702") == 0) {
  eeepc->cpufv_disabled = 1;
  pr_info("model %s does not officially support setting cpu speed\n",
   model);
  pr_info("cpufv disabled to avoid instability\n");
 }
 if (strcmp(model, "1005HA") == 0 || strcmp(model, "1201N") == 0 ||
     strcmp(model, "1005PE") == 0) {
  eeepc->hotplug_disabled = 1;
  pr_info("wlan hotplug disabled\n");
 }
}
