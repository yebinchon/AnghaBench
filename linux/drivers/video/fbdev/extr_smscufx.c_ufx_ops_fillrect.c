
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufx_data {int dummy; } ;
struct fb_info {struct ufx_data* par; } ;
struct fb_fillrect {int height; int width; int dy; int dx; } ;


 int sys_fillrect (struct fb_info*,struct fb_fillrect const*) ;
 int ufx_handle_damage (struct ufx_data*,int ,int ,int ,int ) ;

__attribute__((used)) static void ufx_ops_fillrect(struct fb_info *info,
     const struct fb_fillrect *rect)
{
 struct ufx_data *dev = info->par;

 sys_fillrect(info, rect);

 ufx_handle_damage(dev, rect->dx, rect->dy, rect->width,
         rect->height);
}
