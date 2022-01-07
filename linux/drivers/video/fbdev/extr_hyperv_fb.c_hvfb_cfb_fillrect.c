
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvfb_par {scalar_t__ synchronous_fb; } ;
struct fb_info {struct hvfb_par* par; } ;
struct fb_fillrect {int dummy; } ;


 int cfb_fillrect (struct fb_info*,struct fb_fillrect const*) ;
 int synthvid_update (struct fb_info*) ;

__attribute__((used)) static void hvfb_cfb_fillrect(struct fb_info *p,
         const struct fb_fillrect *rect)
{
 struct hvfb_par *par = p->par;

 cfb_fillrect(p, rect);
 if (par->synchronous_fb)
  synthvid_update(p);
}
