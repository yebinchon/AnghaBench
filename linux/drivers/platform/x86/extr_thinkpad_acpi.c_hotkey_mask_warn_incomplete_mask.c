
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int TPACPI_HKEY_NVRAM_KNOWN_MASK ;
 int hotkey_acpi_mask ;
 int hotkey_all_mask ;
 int hotkey_driver_mask ;
 int hotkey_source_mask ;
 int pr_notice (char*,int const) ;

__attribute__((used)) static void hotkey_mask_warn_incomplete_mask(void)
{

 const u32 wantedmask = hotkey_driver_mask &
  ~(hotkey_acpi_mask | hotkey_source_mask) &
  (hotkey_all_mask | TPACPI_HKEY_NVRAM_KNOWN_MASK);

 if (wantedmask)
  pr_notice("required events 0x%08x not enabled!\n", wantedmask);
}
