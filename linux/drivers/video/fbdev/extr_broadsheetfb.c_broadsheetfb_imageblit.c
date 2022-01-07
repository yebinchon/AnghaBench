
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct broadsheetfb_par* par; } ;
struct fb_image {int dummy; } ;
struct broadsheetfb_par {int dummy; } ;


 int broadsheetfb_dpy_update (struct broadsheetfb_par*) ;
 int sys_imageblit (struct fb_info*,struct fb_image const*) ;

__attribute__((used)) static void broadsheetfb_imageblit(struct fb_info *info,
    const struct fb_image *image)
{
 struct broadsheetfb_par *par = info->par;

 sys_imageblit(info, image);

 broadsheetfb_dpy_update(par);
}
