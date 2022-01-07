
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int dummy; } ;


 int DIRTY (int ) ;
 int DIRTY_CMAP (int ) ;
 int bits_per_pixel ;
 int blue ;
 int green ;
 int red ;
 int xres ;
 int xres_virtual ;
 int yres ;
 int yres_virtual ;

__attribute__((used)) static inline int VAR_MATCH(struct fb_var_screeninfo *x, struct fb_var_screeninfo *y)
{
 return (!DIRTY(bits_per_pixel) && !DIRTY(xres)
  && !DIRTY(yres) && !DIRTY(xres_virtual)
  && !DIRTY(yres_virtual)
  && !DIRTY_CMAP(red) && !DIRTY_CMAP(green) && !DIRTY_CMAP(blue));
}
