
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct matrox_fb_info {int dummy; } ;
struct fb_info {scalar_t__ pseudo_palette; } ;
struct fb_fillrect {int rop; size_t color; int width; int height; int dx; int dy; } ;



 struct matrox_fb_info* info2minfo (struct fb_info*) ;
 int matroxfb_accel_clear (struct matrox_fb_info*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void matroxfb_fillrect(struct fb_info* info, const struct fb_fillrect* rect) {
 struct matrox_fb_info *minfo = info2minfo(info);

 switch (rect->rop) {
  case 128:
   matroxfb_accel_clear(minfo, ((u_int32_t *)info->pseudo_palette)[rect->color], rect->dy, rect->dx, rect->height, rect->width);
   break;
 }
}
