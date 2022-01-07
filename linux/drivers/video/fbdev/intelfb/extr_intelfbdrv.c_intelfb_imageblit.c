
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct intelfb_info {int depth; size_t* pseudo_palette; int pitch; } ;
struct TYPE_2__ {int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; } ;
struct fb_image {int depth; size_t fg_color; size_t bg_color; int dy; int dx; int data; int height; int width; } ;


 int ACCEL (struct intelfb_info*,struct fb_info*) ;
 int DBG_MSG (char*) ;
 struct intelfb_info* GET_DINFO (struct fb_info*) ;
 int cfb_imageblit (struct fb_info*,struct fb_image const*) ;
 int intelfbhw_do_drawglyph (struct intelfb_info*,size_t,size_t,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void intelfb_imageblit(struct fb_info *info,
         const struct fb_image *image)
{
        struct intelfb_info *dinfo = GET_DINFO(info);
 u32 fgcolor, bgcolor;





 if (!ACCEL(dinfo, info) || dinfo->depth == 4
     || image->depth != 1) {
  cfb_imageblit(info, image);
  return;
 }

 if (dinfo->depth != 8) {
  fgcolor = dinfo->pseudo_palette[image->fg_color];
  bgcolor = dinfo->pseudo_palette[image->bg_color];
 } else {
  fgcolor = image->fg_color;
  bgcolor = image->bg_color;
 }

 if (!intelfbhw_do_drawglyph(dinfo, fgcolor, bgcolor, image->width,
        image->height, image->data,
        image->dx, image->dy,
        dinfo->pitch, info->var.bits_per_pixel)) {
  cfb_imageblit(info, image);
  return;
 }
}
