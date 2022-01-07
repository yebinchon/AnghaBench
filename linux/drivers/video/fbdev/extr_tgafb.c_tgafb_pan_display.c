
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int dummy; } ;
struct fb_info {int dummy; } ;


 int tgafb_set_par (struct fb_info*) ;

__attribute__((used)) static int tgafb_pan_display(struct fb_var_screeninfo *var, struct fb_info *info)
{

 tgafb_set_par(info);
 return 0;
}
