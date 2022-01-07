
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct au1200_lcd_global_regs_t {int xsize; int ysize; unsigned int brightness; int mask; int colorkey; int backcolor; } ;
struct TYPE_2__ {int screen; int pwmhi; int pwmdiv; int colorkeymsk; int colorkey; int backcolor; } ;


 int LCD_SCREEN_SX ;
 int LCD_SCREEN_SY ;
 TYPE_1__* lcd ;
 int wmb () ;

__attribute__((used)) static void get_global(u_int cmd, struct au1200_lcd_global_regs_t *pdata)
{
 unsigned int hi1, divider;

 pdata->xsize = ((lcd->screen & LCD_SCREEN_SX) >> 19) + 1;
 pdata->ysize = ((lcd->screen & LCD_SCREEN_SY) >> 8) + 1;

 pdata->backcolor = lcd->backcolor;
 pdata->colorkey = lcd->colorkey;
 pdata->mask = lcd->colorkeymsk;


 hi1 = (lcd->pwmhi >> 16) + 1;
 divider = (lcd->pwmdiv & 0x3FFFF) + 1;
 pdata->brightness = ((hi1 << 8) / divider) - 1;
 wmb();
}
