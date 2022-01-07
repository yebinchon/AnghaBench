
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da8xx_fb_par {unsigned int lcdc_clk_rate; int lcdc_clk; int dev; } ;


 int LCD_CLK_DIVISOR (unsigned int) ;
 int LCD_CLK_ENABLE_REG ;
 int LCD_CTRL_REG ;
 int LCD_RASTER_MODE ;
 int LCD_V2_CORE_CLK_EN ;
 int LCD_V2_DMA_CLK_EN ;
 int LCD_V2_LIDD_CLK_EN ;
 scalar_t__ LCD_VERSION_2 ;
 unsigned int clk_get_rate (int ) ;
 int clk_set_rate (int ,unsigned int) ;
 int dev_err (int ,char*,unsigned int) ;
 scalar_t__ lcd_revision ;
 int lcdc_write (int,int ) ;

__attribute__((used)) static int da8xx_fb_config_clk_divider(struct da8xx_fb_par *par,
           unsigned lcdc_clk_div,
           unsigned lcdc_clk_rate)
{
 int ret;

 if (par->lcdc_clk_rate != lcdc_clk_rate) {
  ret = clk_set_rate(par->lcdc_clk, lcdc_clk_rate);
  if (ret) {
   dev_err(par->dev,
    "unable to set clock rate at %u\n",
    lcdc_clk_rate);
   return ret;
  }
  par->lcdc_clk_rate = clk_get_rate(par->lcdc_clk);
 }


 lcdc_write(LCD_CLK_DIVISOR(lcdc_clk_div) |
   (LCD_RASTER_MODE & 0x1), LCD_CTRL_REG);

 if (lcd_revision == LCD_VERSION_2)
  lcdc_write(LCD_V2_DMA_CLK_EN | LCD_V2_LIDD_CLK_EN |
    LCD_V2_CORE_CLK_EN, LCD_CLK_ENABLE_REG);

 return 0;
}
