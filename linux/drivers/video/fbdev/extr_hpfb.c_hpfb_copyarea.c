
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct fb_copyarea {int height; int width; int dy; int dx; int sy; int sx; } ;


 int RR_COPY ;
 int topcat_blit (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void hpfb_copyarea(struct fb_info *info, const struct fb_copyarea *area)
{
 topcat_blit(area->sx, area->sy, area->dx, area->dy, area->width, area->height, RR_COPY);
}
