
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_fb_data {int num_modes; struct fb_videomode* modes; } ;
struct fb_videomode {scalar_t__ xres; scalar_t__ yres; } ;
struct fb_var_screeninfo {scalar_t__ xres; scalar_t__ yres; } ;
struct fb_info {int device; } ;


 struct tmio_fb_data* dev_get_platdata (int ) ;

__attribute__((used)) static struct fb_videomode *
tmiofb_find_mode(struct fb_info *info, struct fb_var_screeninfo *var)
{
 struct tmio_fb_data *data = dev_get_platdata(info->device);
 struct fb_videomode *best = ((void*)0);
 int i;

 for (i = 0; i < data->num_modes; i++) {
  struct fb_videomode *mode = data->modes + i;

  if (mode->xres >= var->xres && mode->yres >= var->yres
    && (!best || (mode->xres < best->xres
        && mode->yres < best->yres)))
   best = mode;
 }

 return best;
}
