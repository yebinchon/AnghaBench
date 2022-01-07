
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct radeonfb_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ xres_virtual; scalar_t__ yres_virtual; } ;
struct fb_info {scalar_t__ state; int flags; TYPE_1__ var; struct radeonfb_info* par; } ;
struct fb_copyarea {scalar_t__ sx; scalar_t__ sy; scalar_t__ dx; scalar_t__ dy; scalar_t__ width; scalar_t__ height; } ;


 int FBINFO_HWACCEL_DISABLED ;
 scalar_t__ FBINFO_STATE_RUNNING ;
 int cfb_copyarea (struct fb_info*,struct fb_copyarea const*) ;
 int radeon_fixup_offset (struct radeonfb_info*) ;
 int radeonfb_prim_copyarea (struct radeonfb_info*,struct fb_copyarea*) ;

void radeonfb_copyarea(struct fb_info *info, const struct fb_copyarea *area)
{
 struct radeonfb_info *rinfo = info->par;
 struct fb_copyarea modded;
 u32 vxres, vyres;
 modded.sx = area->sx;
 modded.sy = area->sy;
 modded.dx = area->dx;
 modded.dy = area->dy;
 modded.width = area->width;
 modded.height = area->height;

 if (info->state != FBINFO_STATE_RUNNING)
  return;
 if (info->flags & FBINFO_HWACCEL_DISABLED) {
  cfb_copyarea(info, area);
  return;
 }

 radeon_fixup_offset(rinfo);

 vxres = info->var.xres_virtual;
 vyres = info->var.yres_virtual;

 if(!modded.width || !modded.height ||
    modded.sx >= vxres || modded.sy >= vyres ||
    modded.dx >= vxres || modded.dy >= vyres)
  return;

 if(modded.sx + modded.width > vxres) modded.width = vxres - modded.sx;
 if(modded.dx + modded.width > vxres) modded.width = vxres - modded.dx;
 if(modded.sy + modded.height > vyres) modded.height = vyres - modded.sy;
 if(modded.dy + modded.height > vyres) modded.height = vyres - modded.dy;

 radeonfb_prim_copyarea(rinfo, &modded);
}
