
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_3__ {scalar_t__ cr01; int pixclock; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* std_modes ;

__attribute__((used)) static int i810fb_find_best_mode(u32 xres, u32 yres, u32 pixclock)
{
 u32 diff = 0, diff_best = 0xFFFFFFFF, i = 0, i_best = 0;
 u8 hfl = (u8) ((xres >> 3) - 1);

 for (i = 0; i < ARRAY_SIZE(std_modes); i++) {
  if (std_modes[i].cr01 == hfl) {
   if (std_modes[i].pixclock <= pixclock)
    diff = pixclock - std_modes[i].pixclock;
   if (diff < diff_best) {
        i_best = i;
        diff_best = diff;
   }
  }
 }
 return i_best;
}
