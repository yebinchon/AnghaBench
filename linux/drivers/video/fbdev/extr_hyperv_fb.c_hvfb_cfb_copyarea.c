
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvfb_par {scalar_t__ synchronous_fb; } ;
struct fb_info {struct hvfb_par* par; } ;
struct fb_copyarea {int dummy; } ;


 int cfb_copyarea (struct fb_info*,struct fb_copyarea const*) ;
 int synthvid_update (struct fb_info*) ;

__attribute__((used)) static void hvfb_cfb_copyarea(struct fb_info *p,
         const struct fb_copyarea *area)
{
 struct hvfb_par *par = p->par;

 cfb_copyarea(p, area);
 if (par->synchronous_fb)
  synthvid_update(p);
}
