
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long u64 ;
typedef scalar_t__ u32 ;
struct mmp_mode {int hsync_invert; int vsync_invert; int invert_pixclock; int pix_fmt_out; int vsync_len; int hsync_len; int lower_margin; int upper_margin; int right_margin; int left_margin; scalar_t__ pixclock_freq; int yres; int xres; int refresh; int name; } ;
struct fb_videomode {int sync; int vmode; int vsync_len; int hsync_len; int lower_margin; int upper_margin; int right_margin; int left_margin; int pixclock; int yres; int xres; int refresh; int name; } ;


 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int do_div (long long,int ) ;

__attribute__((used)) static void fbmode_to_mmpmode(struct mmp_mode *mode,
  struct fb_videomode *videomode, int output_fmt)
{
 u64 div_result = 1000000000000ll;
 mode->name = videomode->name;
 mode->refresh = videomode->refresh;
 mode->xres = videomode->xres;
 mode->yres = videomode->yres;

 do_div(div_result, videomode->pixclock);
 mode->pixclock_freq = (u32)div_result;

 mode->left_margin = videomode->left_margin;
 mode->right_margin = videomode->right_margin;
 mode->upper_margin = videomode->upper_margin;
 mode->lower_margin = videomode->lower_margin;
 mode->hsync_len = videomode->hsync_len;
 mode->vsync_len = videomode->vsync_len;
 mode->hsync_invert = !!(videomode->sync & FB_SYNC_HOR_HIGH_ACT);
 mode->vsync_invert = !!(videomode->sync & FB_SYNC_VERT_HIGH_ACT);

 mode->invert_pixclock = !!(videomode->vmode & 8);
 mode->pix_fmt_out = output_fmt;
}
