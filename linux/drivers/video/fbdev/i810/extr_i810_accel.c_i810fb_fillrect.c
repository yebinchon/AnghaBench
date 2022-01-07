
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct i810fb_par {int dev_flags; int depth; int blit_bpp; } ;
struct TYPE_4__ {int smem_start; int line_length; } ;
struct TYPE_3__ {int accel_flags; } ;
struct fb_info {TYPE_2__ fix; scalar_t__ pseudo_palette; TYPE_1__ var; struct i810fb_par* par; } ;
struct fb_fillrect {int color; size_t rop; int dx; int width; int dy; int height; } ;


 int LOCKUP ;
 int cfb_fillrect (struct fb_info*,struct fb_fillrect const*) ;
 int color_blit (int,int,int,int,int,int,int ,struct fb_info*) ;
 int* i810fb_rop ;

void i810fb_fillrect(struct fb_info *info, const struct fb_fillrect *rect)
{
 struct i810fb_par *par = info->par;
 u32 dx, dy, width, height, dest, rop = 0, color = 0;

 if (!info->var.accel_flags || par->dev_flags & LOCKUP ||
     par->depth == 4) {
  cfb_fillrect(info, rect);
  return;
 }

 if (par->depth == 1)
  color = rect->color;
 else
  color = ((u32 *) (info->pseudo_palette))[rect->color];

 rop = i810fb_rop[rect->rop];

 dx = rect->dx * par->depth;
 width = rect->width * par->depth;
 dy = rect->dy;
 height = rect->height;

 dest = info->fix.smem_start + (dy * info->fix.line_length) + dx;
 color_blit(width, height, info->fix.line_length, dest, rop, color,
     par->blit_bpp, info);
}
