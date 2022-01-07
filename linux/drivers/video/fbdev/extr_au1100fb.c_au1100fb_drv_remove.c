
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_5__ {int cmap; } ;
struct au1100fb_device {scalar_t__ lcdclk; TYPE_2__ info; TYPE_1__* regs; } ;
struct TYPE_4__ {int lcd_control; } ;


 int ENODEV ;
 int LCD_CONTROL_GO ;
 int VESA_POWERDOWN ;
 int au1100fb_fb_blank (int ,TYPE_2__*) ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_put (scalar_t__) ;
 int fb_dealloc_cmap (int *) ;
 struct au1100fb_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_framebuffer (TYPE_2__*) ;

int au1100fb_drv_remove(struct platform_device *dev)
{
 struct au1100fb_device *fbdev = ((void*)0);

 if (!dev)
  return -ENODEV;

 fbdev = platform_get_drvdata(dev);




 fbdev->regs->lcd_control &= ~LCD_CONTROL_GO;


 unregister_framebuffer(&fbdev->info);

 fb_dealloc_cmap(&fbdev->info.cmap);

 if (fbdev->lcdclk) {
  clk_disable_unprepare(fbdev->lcdclk);
  clk_put(fbdev->lcdclk);
 }

 return 0;
}
