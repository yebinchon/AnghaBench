
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lcd_ctrl_config {int bpp; int fdd; int raster_order; int fifo_th; int dma_burst_sz; } ;
struct fb_videomode {int sync; scalar_t__ yres; scalar_t__ xres; int right_margin; int hsync_len; int left_margin; int lower_margin; int vsync_len; int upper_margin; } ;
struct da8xx_fb_par {int dev; } ;


 int FB_SYNC_CLK_INVERT ;
 int LCD_INVERT_PIXEL_CLOCK ;
 int LCD_RASTER_CTRL_REG ;
 int LCD_RASTER_TIMING_2_REG ;
 int da8xx_fb_calc_config_clk_divider (struct da8xx_fb_par*,struct fb_videomode*) ;
 int dev_err (int ,char*) ;
 int lcd_cfg_display (struct lcd_ctrl_config const*,struct fb_videomode*) ;
 int lcd_cfg_dma (int ,int ) ;
 int lcd_cfg_frame_buffer (struct da8xx_fb_par*,unsigned int,unsigned int,int,int ) ;
 int lcd_cfg_horizontal_sync (int ,int ,int ) ;
 int lcd_cfg_vertical_sync (int ,int ,int ) ;
 int lcdc_read (int ) ;
 int lcdc_write (int,int ) ;

__attribute__((used)) static int lcd_init(struct da8xx_fb_par *par, const struct lcd_ctrl_config *cfg,
  struct fb_videomode *panel)
{
 u32 bpp;
 int ret = 0;

 ret = da8xx_fb_calc_config_clk_divider(par, panel);
 if (ret) {
  dev_err(par->dev, "unable to configure clock\n");
  return ret;
 }

 if (panel->sync & FB_SYNC_CLK_INVERT)
  lcdc_write((lcdc_read(LCD_RASTER_TIMING_2_REG) |
   LCD_INVERT_PIXEL_CLOCK), LCD_RASTER_TIMING_2_REG);
 else
  lcdc_write((lcdc_read(LCD_RASTER_TIMING_2_REG) &
   ~LCD_INVERT_PIXEL_CLOCK), LCD_RASTER_TIMING_2_REG);


 ret = lcd_cfg_dma(cfg->dma_burst_sz, cfg->fifo_th);
 if (ret < 0)
  return ret;


 lcd_cfg_vertical_sync(panel->upper_margin, panel->vsync_len,
   panel->lower_margin);
 lcd_cfg_horizontal_sync(panel->left_margin, panel->hsync_len,
   panel->right_margin);


 ret = lcd_cfg_display(cfg, panel);
 if (ret < 0)
  return ret;

 bpp = cfg->bpp;

 if (bpp == 12)
  bpp = 16;
 ret = lcd_cfg_frame_buffer(par, (unsigned int)panel->xres,
    (unsigned int)panel->yres, bpp,
    cfg->raster_order);
 if (ret < 0)
  return ret;


 lcdc_write((lcdc_read(LCD_RASTER_CTRL_REG) & 0xfff00fff) |
         (cfg->fdd << 12), LCD_RASTER_CTRL_REG);

 return 0;
}
