
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int dummy; } ;
struct fb_info {int par; } ;


 int platinum_var_to_par (struct fb_var_screeninfo*,int ,int) ;

__attribute__((used)) static int platinumfb_check_var (struct fb_var_screeninfo *var, struct fb_info *info)
{
 return platinum_var_to_par(var, info->par, 1);
}
