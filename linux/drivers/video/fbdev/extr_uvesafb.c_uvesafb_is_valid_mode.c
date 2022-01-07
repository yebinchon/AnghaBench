
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_videomode {int yres; int xres; } ;
struct TYPE_2__ {scalar_t__ gtf; } ;
struct fb_info {int par; int var; TYPE_1__ monspecs; } ;


 int UVESAFB_EXACT_RES ;
 scalar_t__ fb_validate_mode (int *,struct fb_info*) ;
 int fb_videomode_to_var (int *,struct fb_videomode*) ;
 int uvesafb_vbe_find_mode (int ,int ,int ,int,int ) ;

__attribute__((used)) static int uvesafb_is_valid_mode(struct fb_videomode *mode,
     struct fb_info *info)
{
 if (info->monspecs.gtf) {
  fb_videomode_to_var(&info->var, mode);
  if (fb_validate_mode(&info->var, info))
   return 0;
 }

 if (uvesafb_vbe_find_mode(info->par, mode->xres, mode->yres, 8,
    UVESAFB_EXACT_RES) == -1)
  return 0;

 return 1;
}
