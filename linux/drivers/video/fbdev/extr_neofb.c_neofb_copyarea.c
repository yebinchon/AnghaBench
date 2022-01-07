
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int accel; } ;
struct fb_info {TYPE_1__ fix; } ;
struct fb_copyarea {int dummy; } ;






 int cfb_copyarea (struct fb_info*,struct fb_copyarea const*) ;
 int neo2200_copyarea (struct fb_info*,struct fb_copyarea const*) ;

__attribute__((used)) static void
neofb_copyarea(struct fb_info *info, const struct fb_copyarea *area)
{
 switch (info->fix.accel) {
  case 131:
  case 130:
  case 129:
  case 128:
   neo2200_copyarea(info, area);
   break;
  default:
   cfb_copyarea(info, area);
   break;
 }
}
