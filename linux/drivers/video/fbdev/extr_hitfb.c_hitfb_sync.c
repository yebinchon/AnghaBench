
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int hitfb_accel_wait () ;

__attribute__((used)) static int hitfb_sync(struct fb_info *info)
{
 hitfb_accel_wait();

 return 0;
}
