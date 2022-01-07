
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {int dummy; } ;
struct fb_tilearea {int sx; int sy; int dx; int dy; int height; int width; } ;
struct fb_info {TYPE_1__* tileops; } ;
struct TYPE_2__ {int (* fb_tilecopy ) (struct fb_info*,struct fb_tilearea*) ;} ;


 int stub1 (struct fb_info*,struct fb_tilearea*) ;

__attribute__((used)) static void tile_bmove(struct vc_data *vc, struct fb_info *info, int sy,
         int sx, int dy, int dx, int height, int width)
{
 struct fb_tilearea area;

 area.sx = sx;
 area.sy = sy;
 area.dx = dx;
 area.dy = dy;
 area.height = height;
 area.width = width;

 info->tileops->fb_tilecopy(info, &area);
}
