
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct dlfb_data* par; } ;
struct fb_copyarea {int height; int width; int dy; int dx; } ;
struct dlfb_data {int dummy; } ;


 int dlfb_offload_damage (struct dlfb_data*,int ,int ,int ,int ) ;
 int sys_copyarea (struct fb_info*,struct fb_copyarea const*) ;

__attribute__((used)) static void dlfb_ops_copyarea(struct fb_info *info,
    const struct fb_copyarea *area)
{

 struct dlfb_data *dlfb = info->par;

 sys_copyarea(info, area);

 dlfb_offload_damage(dlfb, area->dx, area->dy,
   area->width, area->height);
}
