
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int flags; } ;


 int FBINFO_HWACCEL_DISABLED ;
 int viafb_wait_engine_idle (struct fb_info*) ;

__attribute__((used)) static int viafb_sync(struct fb_info *info)
{
 if (!(info->flags & FBINFO_HWACCEL_DISABLED))
  viafb_wait_engine_idle(info);
 return 0;
}
