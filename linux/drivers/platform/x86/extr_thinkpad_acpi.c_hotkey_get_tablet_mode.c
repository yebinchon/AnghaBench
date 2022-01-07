
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hotkey_tablet; } ;


 int EIO ;
 int TP_HOTKEY_TABLET_MASK ;


 int acpi_evalf (int ,int*,char*,char*,...) ;
 int hkey_handle ;
 int hotkey_gmms_get_tablet_mode (int,int *) ;
 TYPE_1__ tp_features ;

__attribute__((used)) static int hotkey_get_tablet_mode(int *status)
{
 int s;

 switch (tp_features.hotkey_tablet) {
 case 128:
  if (!acpi_evalf(hkey_handle, &s, "MHKG", "d"))
   return -EIO;

  *status = ((s & TP_HOTKEY_TABLET_MASK) != 0);
  break;
 case 129:
  if (!acpi_evalf(hkey_handle, &s, "GMMS", "dd", 0))
   return -EIO;

  *status = hotkey_gmms_get_tablet_mode(s, ((void*)0));
  break;
 default:
  break;
 }

 return 0;
}
