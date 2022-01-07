
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
struct fb_var_screeninfo {int bits_per_pixel; TYPE_1__ green; } ;


 int DBG_MSG (char*,int,int) ;

__inline__ int intelfb_var_to_depth(const struct fb_var_screeninfo *var)
{
 DBG_MSG("intelfb_var_to_depth: bpp: %d, green.length is %d\n",
  var->bits_per_pixel, var->green.length);

 switch (var->bits_per_pixel) {
 case 16:
  return (var->green.length == 6) ? 16 : 15;
 case 32:
  return 24;
 default:
  return var->bits_per_pixel;
 }
}
