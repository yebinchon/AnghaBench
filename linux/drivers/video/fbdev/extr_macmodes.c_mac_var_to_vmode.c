
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mode_map {int vmode; struct fb_videomode* mode; } ;
struct fb_videomode {scalar_t__ xres; scalar_t__ yres; scalar_t__ pixclock; int vmode; } ;
struct fb_var_screeninfo {int bits_per_pixel; scalar_t__ xres; scalar_t__ yres; scalar_t__ xres_virtual; scalar_t__ yres_virtual; scalar_t__ pixclock; int vmode; } ;


 int CMODE_16 ;
 int CMODE_32 ;
 int CMODE_8 ;
 int EINVAL ;
 int FB_VMODE_MASK ;
 struct mode_map* mac_modes ;

int mac_var_to_vmode(const struct fb_var_screeninfo *var, int *vmode,
       int *cmode)
{
    const struct mode_map *map;

    if (var->bits_per_pixel <= 8)
 *cmode = CMODE_8;
    else if (var->bits_per_pixel <= 16)
 *cmode = CMODE_16;
    else if (var->bits_per_pixel <= 32)
 *cmode = CMODE_32;
    else
 return -EINVAL;





    for (map = mac_modes; map->vmode != -1; map++) {
 const struct fb_videomode *mode = map->mode;

 if (var->xres > mode->xres || var->yres > mode->yres)
     continue;
 if (var->xres_virtual > mode->xres || var->yres_virtual > mode->yres)
     continue;
 if (var->pixclock > mode->pixclock)
     continue;
 if ((var->vmode & FB_VMODE_MASK) != mode->vmode)
     continue;
 *vmode = map->vmode;





 map++;
 while (map->vmode != -1) {
     const struct fb_videomode *clk_mode = map->mode;

     if (mode->xres != clk_mode->xres || mode->yres != clk_mode->yres)
  break;
     if (var->pixclock > mode->pixclock)
         break;
     if (mode->vmode != clk_mode->vmode)
  continue;
     *vmode = map->vmode;
     map++;
 }
 return 0;
    }
    return -EINVAL;
}
