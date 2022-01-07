
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tridentfb_par {int (* fill_rect ) (struct tridentfb_par*,int ,int ,int ,int ,int,int ) ;int (* wait_engine ) (struct tridentfb_par*) ;} ;
struct TYPE_2__ {int bits_per_pixel; } ;
struct fb_info {int flags; scalar_t__ pseudo_palette; TYPE_1__ var; struct tridentfb_par* par; } ;
struct fb_fillrect {int color; int rop; int height; int width; int dy; int dx; } ;


 int FBINFO_HWACCEL_DISABLED ;
 int cfb_fillrect (struct fb_info*,struct fb_fillrect const*) ;
 int stub1 (struct tridentfb_par*) ;
 int stub2 (struct tridentfb_par*,int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static void tridentfb_fillrect(struct fb_info *info,
          const struct fb_fillrect *fr)
{
 struct tridentfb_par *par = info->par;
 int col;

 if (info->flags & FBINFO_HWACCEL_DISABLED) {
  cfb_fillrect(info, fr);
  return;
 }
 if (info->var.bits_per_pixel == 8) {
  col = fr->color;
  col |= col << 8;
  col |= col << 16;
 } else
  col = ((u32 *)(info->pseudo_palette))[fr->color];

 par->wait_engine(par);
 par->fill_rect(par, fr->dx, fr->dy, fr->width,
         fr->height, col, fr->rop);
}
