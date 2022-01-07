
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lynx_cursor {int dummy; } ;


 int HWC_COLOR_12 ;
 int HWC_COLOR_12_1_RGB565_MASK ;
 int HWC_COLOR_12_2_RGB565_MASK ;
 int HWC_COLOR_12_2_RGB565_SHIFT ;
 int HWC_COLOR_3 ;
 int poke32 (int ,int) ;

void sm750_hw_cursor_setColor(struct lynx_cursor *cursor, u32 fg, u32 bg)
{
 u32 reg = (fg << HWC_COLOR_12_2_RGB565_SHIFT) &
  HWC_COLOR_12_2_RGB565_MASK;

 poke32(HWC_COLOR_12, reg | (bg & HWC_COLOR_12_1_RGB565_MASK));
 poke32(HWC_COLOR_3, 0xffe0);
}
