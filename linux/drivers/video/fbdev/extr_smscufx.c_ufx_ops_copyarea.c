
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufx_data {int dummy; } ;
struct fb_info {struct ufx_data* par; } ;
struct fb_copyarea {int height; int width; int dy; int dx; } ;


 int sys_copyarea (struct fb_info*,struct fb_copyarea const*) ;
 int ufx_handle_damage (struct ufx_data*,int ,int ,int ,int ) ;

__attribute__((used)) static void ufx_ops_copyarea(struct fb_info *info,
    const struct fb_copyarea *area)
{

 struct ufx_data *dev = info->par;

 sys_copyarea(info, area);

 ufx_handle_damage(dev, area->dx, area->dy,
   area->width, area->height);
}
