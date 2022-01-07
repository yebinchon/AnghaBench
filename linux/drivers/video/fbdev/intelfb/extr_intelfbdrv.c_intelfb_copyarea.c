
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intelfb_info {int depth; int pitch; } ;
struct TYPE_2__ {int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; } ;
struct fb_copyarea {int height; int width; int dy; int dx; int sy; int sx; } ;


 int ACCEL (struct intelfb_info*,struct fb_info*) ;
 int DBG_MSG (char*) ;
 struct intelfb_info* GET_DINFO (struct fb_info*) ;
 int cfb_copyarea (struct fb_info*,struct fb_copyarea const*) ;
 int intelfbhw_do_bitblt (struct intelfb_info*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void intelfb_copyarea(struct fb_info *info,
        const struct fb_copyarea *region)
{
        struct intelfb_info *dinfo = GET_DINFO(info);





 if (!ACCEL(dinfo, info) || dinfo->depth == 4) {
  cfb_copyarea(info, region);
  return;
 }

 intelfbhw_do_bitblt(dinfo, region->sx, region->sy, region->dx,
       region->dy, region->width, region->height,
       dinfo->pitch, info->var.bits_per_pixel);
}
