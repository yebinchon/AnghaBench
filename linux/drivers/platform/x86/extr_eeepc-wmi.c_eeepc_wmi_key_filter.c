
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_wmi_driver {int dummy; } ;


 int ASUS_WMI_KEY_IGNORE ;




__attribute__((used)) static void eeepc_wmi_key_filter(struct asus_wmi_driver *asus_wmi, int *code,
     unsigned int *value, bool *autorelease)
{
 switch (*code) {
 case 129:
  *value = 1;
  *autorelease = 0;
  break;
 case 130:
  *code = ASUS_WMI_KEY_IGNORE;
  break;
 case 128:
  *code = 129;
  *value = 0;
  *autorelease = 0;
  break;
 }
}
