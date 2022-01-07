
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_par {int lockup; } ;
struct fb_info {scalar_t__ state; struct nvidia_par* par; } ;
struct fb_image {int depth; } ;


 scalar_t__ FBINFO_STATE_RUNNING ;
 int cfb_imageblit (struct fb_info*,struct fb_image const*) ;
 int nvidiafb_mono_color_expand (struct fb_info*,struct fb_image const*) ;

void nvidiafb_imageblit(struct fb_info *info, const struct fb_image *image)
{
 struct nvidia_par *par = info->par;

 if (info->state != FBINFO_STATE_RUNNING)
  return;

 if (image->depth == 1 && !par->lockup)
  nvidiafb_mono_color_expand(info, image);
 else
  cfb_imageblit(info, image);
}
