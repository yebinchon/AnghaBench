
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lynx_cursor {int dummy; } ;


 int HWC_LOCATION ;
 int HWC_LOCATION_X_MASK ;
 int HWC_LOCATION_Y_MASK ;
 int HWC_LOCATION_Y_SHIFT ;
 int poke32 (int ,int) ;

void sm750_hw_cursor_setPos(struct lynx_cursor *cursor, int x, int y)
{
 u32 reg;

 reg = ((y << HWC_LOCATION_Y_SHIFT) & HWC_LOCATION_Y_MASK) |
        (x & HWC_LOCATION_X_MASK);
 poke32(HWC_LOCATION, reg);
}
