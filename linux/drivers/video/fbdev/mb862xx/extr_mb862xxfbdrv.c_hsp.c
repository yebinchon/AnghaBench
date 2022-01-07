
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int xres; int right_margin; } ;



__attribute__((used)) static inline int hsp(struct fb_var_screeninfo *var)
{
 return var->xres + var->right_margin - 1;
}
