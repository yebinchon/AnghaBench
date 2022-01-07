
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct fb_image {int dummy; } ;


 int sys_imageblit (struct fb_info*,struct fb_image const*) ;

__attribute__((used)) static void unifb_imageblit(struct fb_info *info, const struct fb_image *image)
{
 sys_imageblit(info, image);
}
