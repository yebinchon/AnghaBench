
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int dummy; } ;
struct TYPE_2__ {int tt_shiftmode; } ;


 int TT_SHIFTER_MODEMASK ;
 int TT_SHIFTER_STHIGH ;
 TYPE_1__ shifter_tt ;
 unsigned int* tt_palette ;

__attribute__((used)) static int tt_setcolreg(unsigned int regno, unsigned int red,
   unsigned int green, unsigned int blue,
   unsigned int transp, struct fb_info *info)
{
 if ((shifter_tt.tt_shiftmode & TT_SHIFTER_MODEMASK) == TT_SHIFTER_STHIGH)
  regno += 254;
 if (regno > 255)
  return 1;
 tt_palette[regno] = (((red >> 12) << 8) | ((green >> 12) << 4) |
        (blue >> 12));
 if ((shifter_tt.tt_shiftmode & TT_SHIFTER_MODEMASK) ==
     TT_SHIFTER_STHIGH && regno == 254)
  tt_palette[0] = 0;
 return 0;
}
