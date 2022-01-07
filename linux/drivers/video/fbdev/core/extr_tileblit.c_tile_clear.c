
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {int vc_video_erase_char; scalar_t__ vc_hi_font_mask; } ;
struct fb_tilerect {int index; int sx; int sy; int width; int height; int rop; int bg; int fg; } ;
struct fb_info {TYPE_1__* tileops; } ;
struct TYPE_2__ {int (* fb_tilefill ) (struct fb_info*,struct fb_tilerect*) ;} ;


 int ROP_COPY ;
 int attr_bgcol_ec (int,struct vc_data*,struct fb_info*) ;
 int attr_fgcol_ec (int,struct vc_data*,struct fb_info*) ;
 int stub1 (struct fb_info*,struct fb_tilerect*) ;

__attribute__((used)) static void tile_clear(struct vc_data *vc, struct fb_info *info, int sy,
         int sx, int height, int width)
{
 struct fb_tilerect rect;
 int bgshift = (vc->vc_hi_font_mask) ? 13 : 12;
 int fgshift = (vc->vc_hi_font_mask) ? 9 : 8;

 rect.index = vc->vc_video_erase_char &
  ((vc->vc_hi_font_mask) ? 0x1ff : 0xff);
 rect.fg = attr_fgcol_ec(fgshift, vc, info);
 rect.bg = attr_bgcol_ec(bgshift, vc, info);
 rect.sx = sx;
 rect.sy = sy;
 rect.width = width;
 rect.height = height;
 rect.rop = ROP_COPY;

 info->tileops->fb_tilefill(info, &rect);
}
