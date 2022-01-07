
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; } ;
struct fb_copyarea {int height; int width; int dy; int dx; int sy; int sx; } ;


 int hitfb_accel_bitblt (int,int ,int ,int ,int ,int ,int ,int,int ) ;
 int hitfb_accel_wait () ;

__attribute__((used)) static void hitfb_copyarea(struct fb_info *p, const struct fb_copyarea *area)
{
 hitfb_accel_wait();
 hitfb_accel_bitblt(p->var.bits_per_pixel == 16, area->sx, area->sy,
      area->dx, area->dy, area->width, area->height,
      0x00cc, 0);
}
