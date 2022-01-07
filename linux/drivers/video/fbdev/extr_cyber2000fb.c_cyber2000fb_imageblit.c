
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct fb_image {int dummy; } ;


 int cfb_imageblit (struct fb_info*,struct fb_image const*) ;

__attribute__((used)) static void
cyber2000fb_imageblit(struct fb_info *info, const struct fb_image *image)
{
 cfb_imageblit(info, image);
 return;
}
