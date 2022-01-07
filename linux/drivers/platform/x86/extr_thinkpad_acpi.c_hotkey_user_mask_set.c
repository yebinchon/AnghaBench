
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int hotkey_mask_ff; } ;


 int const hotkey_acpi_mask ;
 int const hotkey_driver_mask ;
 int hotkey_mask_set (int const) ;
 int const hotkey_source_mask ;
 int hotkey_user_mask ;
 int pr_notice (char*,...) ;
 TYPE_1__ tp_warned ;

__attribute__((used)) static int hotkey_user_mask_set(const u32 mask)
{
 int rc;



 if (!tp_warned.hotkey_mask_ff &&
     (mask == 0xffff || mask == 0xffffff ||
      mask == 0xffffffff)) {
  tp_warned.hotkey_mask_ff = 1;
  pr_notice("setting the hotkey mask to 0x%08x is likely not the best way to go about it\n",
     mask);
  pr_notice("please consider using the driver defaults, and refer to up-to-date thinkpad-acpi documentation\n");
 }



 rc = hotkey_mask_set((mask | hotkey_driver_mask) & ~hotkey_source_mask);


 hotkey_user_mask = mask & (hotkey_acpi_mask | hotkey_source_mask);

 return rc;
}
