
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct omap_video_timings {int pixelclock; int interlace; void* vsync_level; void* hsync_level; int y_res; int x_res; int vsw; int hsw; int vfp; int vbp; int hfp; int hbp; int sync_pclk_edge; void* de_level; int data_pclk_edge; } ;
struct omap_dss_device {TYPE_1__* driver; } ;
struct fb_var_screeninfo {int sync; int vmode; int bits_per_pixel; int yres; int xres; int vsync_len; int hsync_len; int lower_margin; int upper_margin; int right_margin; int left_margin; int pixclock; struct fb_var_screeninfo* fbops; } ;
struct fb_ops {int sync; int vmode; int bits_per_pixel; int yres; int xres; int vsync_len; int hsync_len; int lower_margin; int upper_margin; int right_margin; int left_margin; int pixclock; struct fb_ops* fbops; } ;
struct fb_info {int sync; int vmode; int bits_per_pixel; int yres; int xres; int vsync_len; int hsync_len; int lower_margin; int upper_margin; int right_margin; int left_margin; int pixclock; struct fb_info* fbops; } ;
struct TYPE_2__ {int (* get_timings ) (struct omap_dss_device*,struct omap_video_timings*) ;} ;


 int EINVAL ;
 int ENOMEM ;
 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int FB_VMODE_INTERLACED ;
 int GFP_KERNEL ;
 int OMAPDSS_DRIVE_SIG_FALLING_EDGE ;
 int OMAPDSS_DRIVE_SIG_RISING_EDGE ;
 void* OMAPDSS_SIG_ACTIVE_HIGH ;
 void* OMAPDSS_SIG_ACTIVE_LOW ;
 int PICOS2KHZ (int ) ;
 int fb_find_mode (struct fb_var_screeninfo*,struct fb_var_screeninfo*,char const*,int *,int ,int *,int) ;
 int kfree (struct fb_var_screeninfo*) ;
 struct fb_var_screeninfo* kzalloc (int,int ) ;
 struct omap_video_timings omap_dss_ntsc_timings ;
 struct omap_video_timings omap_dss_pal_timings ;
 scalar_t__ strcmp (char const*,char*) ;
 int stub1 (struct omap_dss_device*,struct omap_video_timings*) ;

__attribute__((used)) static int omapfb_mode_to_timings(const char *mode_str,
  struct omap_dss_device *display,
  struct omap_video_timings *timings, u8 *bpp)
{
 struct fb_info *fbi;
 struct fb_var_screeninfo *var;
 struct fb_ops *fbops;
 int r;
 *bpp = 0;
 fbi = ((void*)0);
 var = ((void*)0);
 fbops = ((void*)0);

 fbi = kzalloc(sizeof(*fbi), GFP_KERNEL);
 if (fbi == ((void*)0)) {
  r = -ENOMEM;
  goto err;
 }

 var = kzalloc(sizeof(*var), GFP_KERNEL);
 if (var == ((void*)0)) {
  r = -ENOMEM;
  goto err;
 }

 fbops = kzalloc(sizeof(*fbops), GFP_KERNEL);
 if (fbops == ((void*)0)) {
  r = -ENOMEM;
  goto err;
 }

 fbi->fbops = fbops;

 r = fb_find_mode(var, fbi, mode_str, ((void*)0), 0, ((void*)0), 24);
 if (r == 0) {
  r = -EINVAL;
  goto err;
 }

 if (display->driver->get_timings) {
  display->driver->get_timings(display, timings);
 } else {
  timings->data_pclk_edge = OMAPDSS_DRIVE_SIG_RISING_EDGE;
  timings->de_level = OMAPDSS_SIG_ACTIVE_HIGH;
  timings->sync_pclk_edge = OMAPDSS_DRIVE_SIG_FALLING_EDGE;
 }

 timings->pixelclock = PICOS2KHZ(var->pixclock) * 1000;
 timings->hbp = var->left_margin;
 timings->hfp = var->right_margin;
 timings->vbp = var->upper_margin;
 timings->vfp = var->lower_margin;
 timings->hsw = var->hsync_len;
 timings->vsw = var->vsync_len;
 timings->x_res = var->xres;
 timings->y_res = var->yres;
 timings->hsync_level = var->sync & FB_SYNC_HOR_HIGH_ACT ?
    OMAPDSS_SIG_ACTIVE_HIGH :
    OMAPDSS_SIG_ACTIVE_LOW;
 timings->vsync_level = var->sync & FB_SYNC_VERT_HIGH_ACT ?
    OMAPDSS_SIG_ACTIVE_HIGH :
    OMAPDSS_SIG_ACTIVE_LOW;
 timings->interlace = var->vmode & FB_VMODE_INTERLACED;

 switch (var->bits_per_pixel) {
 case 16:
  *bpp = 16;
  break;
 case 24:
 case 32:
 default:
  *bpp = 24;
  break;
 }

 r = 0;

err:
 kfree(fbi);
 kfree(var);
 kfree(fbops);

 return r;
}
