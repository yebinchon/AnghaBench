
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LP8727_ID_DEDICATED_CHG ;
 int LP8727_ID_TA ;
 int LP8727_ID_USB_CHG ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static bool lp8727_is_charger_attached(const char *name, int id)
{
 if (!strcmp(name, "ac"))
  return id == LP8727_ID_TA || id == LP8727_ID_DEDICATED_CHG;
 else if (!strcmp(name, "usb"))
  return id == LP8727_ID_USB_CHG;

 return id >= LP8727_ID_TA && id <= LP8727_ID_USB_CHG;
}
