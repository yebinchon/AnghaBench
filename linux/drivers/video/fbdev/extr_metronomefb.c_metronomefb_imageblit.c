
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metronomefb_par {int dummy; } ;
struct fb_info {struct metronomefb_par* par; } ;
struct fb_image {int dummy; } ;


 int metronomefb_dpy_update (struct metronomefb_par*) ;
 int sys_imageblit (struct fb_info*,struct fb_image const*) ;

__attribute__((used)) static void metronomefb_imageblit(struct fb_info *info,
    const struct fb_image *image)
{
 struct metronomefb_par *par = info->par;

 sys_imageblit(info, image);
 metronomefb_dpy_update(par);
}
