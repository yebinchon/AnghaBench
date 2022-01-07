
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fb_var_screeninfo {int left_margin; int xres; int right_margin; int hsync_len; int upper_margin; int yres; int lower_margin; int vsync_len; int pixclock; } ;


 int PICOS2KHZ (int ) ;

__attribute__((used)) static inline int get_var_refresh(struct fb_var_screeninfo *var)
{
 u32 htotal, vtotal;

 htotal = var->left_margin + var->xres + var->right_margin
  + var->hsync_len;
 vtotal = var->upper_margin + var->yres + var->lower_margin
  + var->vsync_len;
 return PICOS2KHZ(var->pixclock) * 1000 / (htotal * vtotal);
}
