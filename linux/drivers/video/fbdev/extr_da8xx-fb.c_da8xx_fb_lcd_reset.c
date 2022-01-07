
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCD_CLK_MAIN_RESET ;
 int LCD_CLK_RESET_REG ;
 int LCD_DMA_CTRL_REG ;
 int LCD_INT_ENABLE_SET_REG ;
 int LCD_RASTER_CTRL_REG ;
 scalar_t__ LCD_VERSION_2 ;
 scalar_t__ lcd_revision ;
 int lcdc_write (int ,int ) ;

__attribute__((used)) static void da8xx_fb_lcd_reset(void)
{

 lcdc_write(0, LCD_DMA_CTRL_REG);
 lcdc_write(0, LCD_RASTER_CTRL_REG);

 if (lcd_revision == LCD_VERSION_2) {
  lcdc_write(0, LCD_INT_ENABLE_SET_REG);

  lcdc_write(LCD_CLK_MAIN_RESET, LCD_CLK_RESET_REG);
  lcdc_write(0, LCD_CLK_RESET_REG);
 }
}
