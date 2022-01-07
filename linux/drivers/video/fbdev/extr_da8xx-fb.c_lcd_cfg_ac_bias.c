
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LCD_AC_BIAS_FREQUENCY (int) ;
 int LCD_AC_BIAS_TRANSITIONS_PER_INT (int) ;
 int LCD_RASTER_TIMING_2_REG ;
 int lcdc_read (int ) ;
 int lcdc_write (int,int ) ;

__attribute__((used)) static void lcd_cfg_ac_bias(int period, int transitions_per_int)
{
 u32 reg;


 reg = lcdc_read(LCD_RASTER_TIMING_2_REG) & 0xFFF00000;
 reg |= LCD_AC_BIAS_FREQUENCY(period) |
  LCD_AC_BIAS_TRANSITIONS_PER_INT(transitions_per_int);
 lcdc_write(reg, LCD_RASTER_TIMING_2_REG);
}
