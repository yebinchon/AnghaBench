
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int omapfb_sync (struct fb_info*) ;

__attribute__((used)) static int omapfb_release(struct fb_info *info, int user)
{
 omapfb_sync(info);
 return 0;
}
