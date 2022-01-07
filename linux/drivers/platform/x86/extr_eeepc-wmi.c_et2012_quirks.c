
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_device {int name; } ;


 int DMI_DEV_TYPE_OEM_STRING ;
 struct dmi_device* dmi_find_device (int ,int *,struct dmi_device const*) ;
 int quirk_asus_et2012_type1 ;
 int quirk_asus_et2012_type3 ;
 int * quirks ;
 int sscanf (int ,char*,char*) ;

__attribute__((used)) static void et2012_quirks(void)
{
 const struct dmi_device *dev = ((void*)0);
 char oemstring[30];

 while ((dev = dmi_find_device(DMI_DEV_TYPE_OEM_STRING, ((void*)0), dev))) {
  if (sscanf(dev->name, "AEMS%24c", oemstring) == 1) {
   if (oemstring[18] == '1')
    quirks = &quirk_asus_et2012_type1;
   else if (oemstring[18] == '3')
    quirks = &quirk_asus_et2012_type3;
   break;
  }
 }
}
