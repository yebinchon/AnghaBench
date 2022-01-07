
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenfb_info {int dummy; } ;
struct fb_info {struct xenfb_info* par; } ;
struct fb_copyarea {int height; int width; int dy; int dx; } ;


 int sys_copyarea (struct fb_info*,struct fb_copyarea const*) ;
 int xenfb_refresh (struct xenfb_info*,int ,int ,int ,int ) ;

__attribute__((used)) static void xenfb_copyarea(struct fb_info *p, const struct fb_copyarea *area)
{
 struct xenfb_info *info = p->par;

 sys_copyarea(p, area);
 xenfb_refresh(info, area->dx, area->dy, area->width, area->height);
}
