
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct fb_var_screeninfo {int yoffset; scalar_t__ xoffset; } ;
struct TYPE_5__ {int line_length; } ;
struct TYPE_4__ {int yoffset; scalar_t__ xoffset; } ;
struct fb_info {TYPE_2__ fix; TYPE_1__ var; } ;
struct au1100fb_device {TYPE_3__* regs; int panel; } ;
struct TYPE_6__ {int lcd_dmaaddr0; int lcd_dmaaddr1; } ;


 int EINVAL ;
 void* LCD_DMA_SA_N (int) ;
 scalar_t__ panel_is_dual (int ) ;
 int print_dbg (char*,...) ;
 struct au1100fb_device* to_au1100fb_device (struct fb_info*) ;

int au1100fb_fb_pan_display(struct fb_var_screeninfo *var, struct fb_info *fbi)
{
 struct au1100fb_device *fbdev;
 int dy;

 fbdev = to_au1100fb_device(fbi);

 print_dbg("fb_pan_display %p %p", var, fbi);

 if (!var || !fbdev) {
  return -EINVAL;
 }

 if (var->xoffset - fbi->var.xoffset) {

  return -EINVAL;
 }

 print_dbg("fb_pan_display 2 %p %p", var, fbi);
 dy = var->yoffset - fbi->var.yoffset;
 if (dy) {

  u32 dmaaddr;

  print_dbg("Panning screen of %d lines", dy);

  dmaaddr = fbdev->regs->lcd_dmaaddr0;
  dmaaddr += (fbi->fix.line_length * dy);


  fbdev->regs->lcd_dmaaddr0 = LCD_DMA_SA_N(dmaaddr);

  if (panel_is_dual(fbdev->panel)) {
   dmaaddr = fbdev->regs->lcd_dmaaddr1;
   dmaaddr += (fbi->fix.line_length * dy);
   fbdev->regs->lcd_dmaaddr0 = LCD_DMA_SA_N(dmaaddr);
 }
 }
 print_dbg("fb_pan_display 3 %p %p", var, fbi);

 return 0;
}
