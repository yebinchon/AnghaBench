
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct dlfb_data* par; } ;
struct fb_fillrect {int height; int width; int dy; int dx; } ;
struct dlfb_data {int dummy; } ;


 int dlfb_offload_damage (struct dlfb_data*,int ,int ,int ,int ) ;
 int sys_fillrect (struct fb_info*,struct fb_fillrect const*) ;

__attribute__((used)) static void dlfb_ops_fillrect(struct fb_info *info,
     const struct fb_fillrect *rect)
{
 struct dlfb_data *dlfb = info->par;

 sys_fillrect(info, rect);

 dlfb_offload_damage(dlfb, rect->dx, rect->dy, rect->width,
         rect->height);
}
