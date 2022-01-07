
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {int dummy; } ;


 int EINVAL ;

int fb_get_mode(int flags, u32 val, struct fb_var_screeninfo *var,
  struct fb_info *info)
{
 return -EINVAL;
}
