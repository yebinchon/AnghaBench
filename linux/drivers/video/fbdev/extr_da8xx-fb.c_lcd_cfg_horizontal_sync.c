
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LCD_RASTER_TIMING_0_REG ;
 int LCD_RASTER_TIMING_2_REG ;
 scalar_t__ LCD_VERSION_2 ;
 scalar_t__ lcd_revision ;
 int lcdc_read (int ) ;
 int lcdc_write (int,int ) ;

__attribute__((used)) static void lcd_cfg_horizontal_sync(int back_porch, int pulse_width,
  int front_porch)
{
 u32 reg;

 reg = lcdc_read(LCD_RASTER_TIMING_0_REG) & 0x3ff;
 reg |= (((back_porch-1) & 0xff) << 24)
     | (((front_porch-1) & 0xff) << 16)
     | (((pulse_width-1) & 0x3f) << 10);
 lcdc_write(reg, LCD_RASTER_TIMING_0_REG);







 if (lcd_revision == LCD_VERSION_2) {

  reg = lcdc_read(LCD_RASTER_TIMING_2_REG) & ~0x780000ff;
  reg |= ((front_porch-1) & 0x300) >> 8;
  reg |= ((back_porch-1) & 0x300) >> 4;
  reg |= ((pulse_width-1) & 0x3c0) << 21;
  lcdc_write(reg, LCD_RASTER_TIMING_2_REG);
 }
}
