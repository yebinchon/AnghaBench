
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {int xres; int yres; int pixclock; } ;
struct fb_info {int dummy; } ;


 int pr_debug (char*,int,int,...) ;

__attribute__((used)) static int ufx_is_valid_mode(struct fb_videomode *mode,
  struct fb_info *info)
{
 if ((mode->xres * mode->yres) > (2048 * 1152)) {
  pr_debug("%dx%d too many pixels",
         mode->xres, mode->yres);
  return 0;
 }

 if (mode->pixclock < 5000) {
  pr_debug("%dx%d %dps pixel clock too fast",
         mode->xres, mode->yres, mode->pixclock);
  return 0;
 }

 pr_debug("%dx%d (pixclk %dps %dMHz) valid mode", mode->xres, mode->yres,
  mode->pixclock, (1000000 / mode->pixclock));
 return 1;
}
