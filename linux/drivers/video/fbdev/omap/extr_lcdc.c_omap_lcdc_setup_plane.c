
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lcd_panel {int x_res; int y_res; } ;
struct fb_var_screeninfo {scalar_t__ rotate; } ;
struct TYPE_6__ {unsigned long frame_offset; int xres; int yres; int screen_width; int color_mode; int bpp; int palette_code; int palette_size; scalar_t__ update_mode; scalar_t__ ext_mode; TYPE_2__* fbdev; } ;
struct TYPE_5__ {int dev; struct lcd_panel* panel; TYPE_1__** fb_info; } ;
struct TYPE_4__ {struct fb_var_screeninfo var; } ;


 int BUG () ;
 int EINVAL ;
 scalar_t__ OMAPFB_AUTO_UPDATE ;





 int dev_dbg (int ,char*,int,...) ;
 int disable_controller () ;
 int enable_controller () ;
 TYPE_3__ lcdc ;
 int omap_stop_lcd_dma () ;
 int setup_lcd_dma () ;

__attribute__((used)) static int omap_lcdc_setup_plane(int plane, int channel_out,
     unsigned long offset, int screen_width,
     int pos_x, int pos_y, int width, int height,
     int color_mode)
{
 struct fb_var_screeninfo *var = &lcdc.fbdev->fb_info[0]->var;
 struct lcd_panel *panel = lcdc.fbdev->panel;
 int rot_x, rot_y;

 if (var->rotate == 0) {
  rot_x = panel->x_res;
  rot_y = panel->y_res;
 } else {
  rot_x = panel->y_res;
  rot_y = panel->x_res;
 }
 if (plane != 0 || channel_out != 0 || pos_x != 0 || pos_y != 0 ||
     width > rot_x || height > rot_y) {





  return -EINVAL;
 }

 lcdc.frame_offset = offset;
 lcdc.xres = width;
 lcdc.yres = height;
 lcdc.screen_width = screen_width;
 lcdc.color_mode = color_mode;

 switch (color_mode) {
 case 132:
  lcdc.bpp = 8;
  lcdc.palette_code = 0x3000;
  lcdc.palette_size = 512;
  break;
 case 130:
  lcdc.bpp = 16;
  lcdc.palette_code = 0x4000;
  lcdc.palette_size = 32;
  break;
 case 131:
  lcdc.bpp = 16;
  lcdc.palette_code = 0x4000;
  lcdc.palette_size = 32;
  break;
 case 129:
  if (lcdc.ext_mode) {
   lcdc.bpp = 12;
   break;
  }

 case 128:
  if (lcdc.ext_mode) {
   lcdc.bpp = 16;
   break;
  }

 default:






  dev_dbg(lcdc.fbdev->dev, "invalid color mode %d\n", color_mode);
  BUG();
  return -1;
 }

 if (lcdc.ext_mode) {
  setup_lcd_dma();
  return 0;
 }

 if (lcdc.update_mode == OMAPFB_AUTO_UPDATE) {
  disable_controller();
  omap_stop_lcd_dma();
  setup_lcd_dma();
  enable_controller();
 }

 return 0;
}
