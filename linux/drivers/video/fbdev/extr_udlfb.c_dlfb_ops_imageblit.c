
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct dlfb_data* par; } ;
struct fb_image {int height; int width; int dy; int dx; } ;
struct dlfb_data {int dummy; } ;


 int dlfb_offload_damage (struct dlfb_data*,int ,int ,int ,int ) ;
 int sys_imageblit (struct fb_info*,struct fb_image const*) ;

__attribute__((used)) static void dlfb_ops_imageblit(struct fb_info *info,
    const struct fb_image *image)
{
 struct dlfb_data *dlfb = info->par;

 sys_imageblit(info, image);

 dlfb_offload_damage(dlfb, image->dx, image->dy,
   image->width, image->height);
}
