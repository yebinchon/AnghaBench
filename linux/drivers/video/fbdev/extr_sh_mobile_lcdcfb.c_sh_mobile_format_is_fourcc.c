
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int grayscale; } ;



__attribute__((used)) static int sh_mobile_format_is_fourcc(const struct fb_var_screeninfo *var)
{
 return var->grayscale > 1;
}
