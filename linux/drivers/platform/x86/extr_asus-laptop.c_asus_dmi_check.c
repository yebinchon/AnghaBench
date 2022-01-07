
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMI_PRODUCT_NAME ;
 char* dmi_get_system_info (int ) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int wlan_status ;

__attribute__((used)) static void asus_dmi_check(void)
{
 const char *model;

 model = dmi_get_system_info(DMI_PRODUCT_NAME);
 if (!model)
  return;


 if (strncmp(model, "L1400B", 6) == 0) {
  wlan_status = -1;
 }
}
