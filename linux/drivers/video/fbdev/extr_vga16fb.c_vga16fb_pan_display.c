
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int dummy; } ;
struct fb_info {int dummy; } ;


 int vga16fb_pan_var (struct fb_info*,struct fb_var_screeninfo*) ;

__attribute__((used)) static int vga16fb_pan_display(struct fb_var_screeninfo *var,
          struct fb_info *info)
{
 vga16fb_pan_var(info, var);
 return 0;
}
