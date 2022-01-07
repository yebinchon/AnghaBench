
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_5__ {int height; int width; } ;
struct vc_data {TYPE_2__ vc_font; } ;
struct fbcon_ops {TYPE_1__* p; } ;
struct fb_info {TYPE_3__* fbops; struct fbcon_ops* fbcon_par; } ;
struct fb_copyarea {int sx; int dx; int width; int height; void* dy; void* sy; } ;
struct TYPE_6__ {int (* fb_copyarea ) (struct fb_info*,struct fb_copyarea*) ;} ;
struct TYPE_4__ {int scrollmode; } ;


 void* GETVYRES (int ,struct fb_info*) ;
 int stub1 (struct fb_info*,struct fb_copyarea*) ;

__attribute__((used)) static void ccw_bmove(struct vc_data *vc, struct fb_info *info, int sy,
       int sx, int dy, int dx, int height, int width)
{
 struct fbcon_ops *ops = info->fbcon_par;
 struct fb_copyarea area;
 u32 vyres = GETVYRES(ops->p->scrollmode, info);

 area.sx = sy * vc->vc_font.height;
 area.sy = vyres - ((sx + width) * vc->vc_font.width);
 area.dx = dy * vc->vc_font.height;
 area.dy = vyres - ((dx + width) * vc->vc_font.width);
 area.width = height * vc->vc_font.height;
 area.height = width * vc->vc_font.width;

 info->fbops->fb_copyarea(info, &area);
}
