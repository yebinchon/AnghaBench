
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ gen; } ;
struct TYPE_4__ {TYPE_1__ sb_type; } ;


 scalar_t__ AMD_CHIPSET_SB800 ;
 TYPE_2__ amd_chipset ;
 int usb_amd_find_chipset_info () ;

bool usb_amd_prefetch_quirk(void)
{
 usb_amd_find_chipset_info();

 return amd_chipset.sb_type.gen == AMD_CHIPSET_SB800;
}
