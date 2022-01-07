
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LCD_CLK_MAIN_RESET ;
 int LCD_CLK_RESET_REG ;
 int LCD_RASTER_CTRL_REG ;
 int LCD_RASTER_ENABLE ;
 scalar_t__ LCD_VERSION_2 ;
 scalar_t__ lcd_revision ;
 int lcdc_read (int ) ;
 int lcdc_write (int,int ) ;
 int mdelay (int) ;

__attribute__((used)) static void lcd_enable_raster(void)
{
 u32 reg;


 if (lcd_revision == LCD_VERSION_2)

  lcdc_write(LCD_CLK_MAIN_RESET, LCD_CLK_RESET_REG);
 mdelay(1);


 if (lcd_revision == LCD_VERSION_2)
  lcdc_write(0, LCD_CLK_RESET_REG);
 mdelay(1);


 reg = lcdc_read(LCD_RASTER_CTRL_REG);
 if (!(reg & LCD_RASTER_ENABLE))
  lcdc_write(reg | LCD_RASTER_ENABLE, LCD_RASTER_CTRL_REG);
}
