
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct intelfb_info {int depth; size_t* pseudo_palette; int pitch; } ;
struct TYPE_2__ {int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; } ;
struct fb_fillrect {scalar_t__ rop; size_t color; int height; int width; int dy; int dx; } ;


 int ACCEL (struct intelfb_info*,struct fb_info*) ;
 int DBG_MSG (char*) ;
 struct intelfb_info* GET_DINFO (struct fb_info*) ;
 size_t PAT_ROP_GXCOPY ;
 size_t PAT_ROP_GXXOR ;
 scalar_t__ ROP_COPY ;
 int cfb_fillrect (struct fb_info*,struct fb_fillrect const*) ;
 int intelfbhw_do_fillrect (struct intelfb_info*,int ,int ,int ,int ,size_t,int ,int ,size_t) ;

__attribute__((used)) static void intelfb_fillrect (struct fb_info *info,
         const struct fb_fillrect *rect)
{
        struct intelfb_info *dinfo = GET_DINFO(info);
 u32 rop, color;





 if (!ACCEL(dinfo, info) || dinfo->depth == 4) {
  cfb_fillrect(info, rect);
  return;
 }

 if (rect->rop == ROP_COPY)
  rop = PAT_ROP_GXCOPY;
 else
  rop = PAT_ROP_GXXOR;

 if (dinfo->depth != 8)
  color = dinfo->pseudo_palette[rect->color];
 else
  color = rect->color;

 intelfbhw_do_fillrect(dinfo, rect->dx, rect->dy,
         rect->width, rect->height, color,
         dinfo->pitch, info->var.bits_per_pixel,
         rop);
}
