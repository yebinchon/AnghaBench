
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int need_pll_quirk; } ;


 TYPE_1__ amd_chipset ;
 int usb_amd_find_chipset_info () ;

bool usb_amd_quirk_pll_check(void)
{
 usb_amd_find_chipset_info();
 return amd_chipset.need_pll_quirk;
}
