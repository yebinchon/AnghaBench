
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int (* copy_rect ) (struct tridentfb_par*,int ,int ,int ,int ,int ,int ) ;int (* wait_engine ) (struct tridentfb_par*) ;} ;
struct fb_info {int flags; struct tridentfb_par* par; } ;
struct fb_copyarea {int height; int width; int dy; int dx; int sy; int sx; } ;


 int FBINFO_HWACCEL_DISABLED ;
 int cfb_copyarea (struct fb_info*,struct fb_copyarea const*) ;
 int stub1 (struct tridentfb_par*) ;
 int stub2 (struct tridentfb_par*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void tridentfb_copyarea(struct fb_info *info,
          const struct fb_copyarea *ca)
{
 struct tridentfb_par *par = info->par;

 if (info->flags & FBINFO_HWACCEL_DISABLED) {
  cfb_copyarea(info, ca);
  return;
 }
 par->wait_engine(par);
 par->copy_rect(par, ca->sx, ca->sy, ca->dx, ca->dy,
         ca->width, ca->height);
}
