
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufx_data {int dummy; } ;
struct fb_info {struct ufx_data* par; } ;
struct fb_image {int height; int width; int dy; int dx; } ;


 int sys_imageblit (struct fb_info*,struct fb_image const*) ;
 int ufx_handle_damage (struct ufx_data*,int ,int ,int ,int ) ;

__attribute__((used)) static void ufx_ops_imageblit(struct fb_info *info,
    const struct fb_image *image)
{
 struct ufx_data *dev = info->par;

 sys_imageblit(info, image);

 ufx_handle_damage(dev, image->dx, image->dy,
   image->width, image->height);
}
