
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ hotkey_mask; } ;


 int EIO ;
 scalar_t__ TPACPI_LIFE_EXITING ;
 int acpi_evalf (int ,int *,char*,char*,int,int) ;
 int hkey_handle ;
 int const hotkey_acpi_mask ;
 int hotkey_mask_get () ;
 int hotkey_mask_warn_incomplete_mask () ;
 int hotkey_source_mask ;
 int pr_notice (char*,int const,int const) ;
 TYPE_1__ tp_features ;
 scalar_t__ tpacpi_lifecycle ;

__attribute__((used)) static int hotkey_mask_set(u32 mask)
{
 int i;
 int rc = 0;

 const u32 fwmask = mask & ~hotkey_source_mask;

 if (tp_features.hotkey_mask) {
  for (i = 0; i < 32; i++) {
   if (!acpi_evalf(hkey_handle,
     ((void*)0), "MHKM", "vdd", i + 1,
     !!(mask & (1 << i)))) {
    rc = -EIO;
    break;
   }
  }
 }
 if (!hotkey_mask_get() && !rc && (fwmask & ~hotkey_acpi_mask)) {
  pr_notice("asked for hotkey mask 0x%08x, but firmware forced it to 0x%08x\n",
     fwmask, hotkey_acpi_mask);
 }

 if (tpacpi_lifecycle != TPACPI_LIFE_EXITING)
  hotkey_mask_warn_incomplete_mask();

 return rc;
}
