
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u16 ;
struct omapfb_info {int* rotation; TYPE_1__* region; } ;
struct omapfb2_device {int dev; int pseudo_palette; } ;
struct omap_dss_device {TYPE_2__* driver; } ;
struct fb_var_screeninfo {int bits_per_pixel; int rotate; int xres; int yres; int xres_virtual; int yres_virtual; scalar_t__ nonstd; } ;
struct fb_info {int cmap; int pseudo_palette; int flags; int * fbops; struct fb_var_screeninfo var; } ;
struct TYPE_4__ {int (* get_resolution ) (struct omap_dss_device*,void**,void**) ;} ;
struct TYPE_3__ {scalar_t__ size; } ;


 int EINVAL ;
 struct omapfb_info* FB2OFB (struct fb_info*) ;
 int FBINFO_FLAG_DEFAULT ;
 int FB_ROTATE_CCW ;
 int FB_ROTATE_CW ;
 int check_fb_var (struct fb_info*,struct fb_var_screeninfo*) ;
 int clear_fb_info (struct fb_info*) ;
 int def_rotate ;
 int dev_err (int ,char*) ;
 struct omap_dss_device* fb2display (struct fb_info*) ;
 int fb_alloc_cmap (int *,int,int ) ;
 int omapfb_get_recommended_bpp (struct omapfb2_device*,struct omap_dss_device*) ;
 int omapfb_ops ;
 int set_fb_fix (struct fb_info*) ;
 int setup_vrfb_rotation (struct fb_info*) ;
 int stub1 (struct omap_dss_device*,void**,void**) ;

__attribute__((used)) static int omapfb_fb_init(struct omapfb2_device *fbdev, struct fb_info *fbi)
{
 struct fb_var_screeninfo *var = &fbi->var;
 struct omap_dss_device *display = fb2display(fbi);
 struct omapfb_info *ofbi = FB2OFB(fbi);
 int r = 0;

 fbi->fbops = &omapfb_ops;
 fbi->flags = FBINFO_FLAG_DEFAULT;
 fbi->pseudo_palette = fbdev->pseudo_palette;

 if (ofbi->region->size == 0) {
  clear_fb_info(fbi);
  return 0;
 }

 var->nonstd = 0;
 var->bits_per_pixel = 0;

 var->rotate = def_rotate;

 if (display) {
  u16 w, h;
  int rotation = (var->rotate + ofbi->rotation[0]) % 4;

  display->driver->get_resolution(display, &w, &h);

  if (rotation == FB_ROTATE_CW ||
    rotation == FB_ROTATE_CCW) {
   var->xres = h;
   var->yres = w;
  } else {
   var->xres = w;
   var->yres = h;
  }

  var->xres_virtual = var->xres;
  var->yres_virtual = var->yres;

  if (!var->bits_per_pixel) {
   switch (omapfb_get_recommended_bpp(fbdev, display)) {
   case 16:
    var->bits_per_pixel = 16;
    break;
   case 24:
    var->bits_per_pixel = 32;
    break;
   default:
    dev_err(fbdev->dev, "illegal display "
      "bpp\n");
    return -EINVAL;
   }
  }
 } else {

  var->xres = 320;
  var->yres = 240;
  var->xres_virtual = var->xres;
  var->yres_virtual = var->yres;
  if (!var->bits_per_pixel)
   var->bits_per_pixel = 16;
 }

 r = check_fb_var(fbi, var);
 if (r)
  goto err;

 set_fb_fix(fbi);
 r = setup_vrfb_rotation(fbi);
 if (r)
  goto err;

 r = fb_alloc_cmap(&fbi->cmap, 256, 0);
 if (r)
  dev_err(fbdev->dev, "unable to allocate color map memory\n");

err:
 return r;
}
