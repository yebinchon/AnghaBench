
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int accel; } ;
struct fb_info {TYPE_1__ fix; } ;






 int neo2200_sync (struct fb_info*) ;

__attribute__((used)) static int
neofb_sync(struct fb_info *info)
{
 switch (info->fix.accel) {
  case 131:
  case 130:
  case 129:
  case 128:
   neo2200_sync(info);
   break;
  default:
   break;
 }
 return 0;
}
