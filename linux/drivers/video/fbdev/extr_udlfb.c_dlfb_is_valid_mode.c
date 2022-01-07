
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {int xres; int yres; } ;
struct dlfb_data {int sku_pixel_limit; } ;



__attribute__((used)) static int dlfb_is_valid_mode(struct fb_videomode *mode, struct dlfb_data *dlfb)
{
 if (mode->xres * mode->yres > dlfb->sku_pixel_limit)
  return 0;

 return 1;
}
