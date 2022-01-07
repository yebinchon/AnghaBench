
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fb_info {int cmap; struct da8xx_fb_par* par; } ;
struct da8xx_fb_par {scalar_t__ lcd_supply; } ;


 int DA8XX_FRAME_WAIT ;
 int LCD_DMA_CTRL_REG ;
 int LCD_RASTER_CTRL_REG ;
 struct fb_info* dev_get_drvdata (int *) ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int lcd_da8xx_cpufreq_deregister (struct da8xx_fb_par*) ;
 int lcd_disable_raster (int ) ;
 int lcdc_write (int ,int ) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;
 int regulator_disable (scalar_t__) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int fb_remove(struct platform_device *dev)
{
 struct fb_info *info = dev_get_drvdata(&dev->dev);
 struct da8xx_fb_par *par = info->par;
 int ret;




 if (par->lcd_supply) {
  ret = regulator_disable(par->lcd_supply);
  if (ret)
   return ret;
 }

 lcd_disable_raster(DA8XX_FRAME_WAIT);
 lcdc_write(0, LCD_RASTER_CTRL_REG);


 lcdc_write(0, LCD_DMA_CTRL_REG);

 unregister_framebuffer(info);
 fb_dealloc_cmap(&info->cmap);
 pm_runtime_put_sync(&dev->dev);
 pm_runtime_disable(&dev->dev);
 framebuffer_release(info);

 return 0;
}
