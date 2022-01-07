
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int rev; scalar_t__ gen; } ;
struct TYPE_4__ {TYPE_1__ sb_type; } ;


 scalar_t__ AMD_CHIPSET_SB600 ;
 scalar_t__ AMD_CHIPSET_SB700 ;
 TYPE_2__ amd_chipset ;
 int usb_amd_find_chipset_info () ;

bool usb_amd_hang_symptom_quirk(void)
{
 u8 rev;

 usb_amd_find_chipset_info();
 rev = amd_chipset.sb_type.rev;

 return amd_chipset.sb_type.gen == AMD_CHIPSET_SB600 ||
   (amd_chipset.sb_type.gen == AMD_CHIPSET_SB700 &&
    rev >= 0x3a && rev <= 0x3b);
}
