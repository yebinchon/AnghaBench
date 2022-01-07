
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
struct fb_var_screeninfo {int bits_per_pixel; TYPE_1__ green; } ;



__attribute__((used)) static inline int var_to_depth(const struct fb_var_screeninfo *var)
{
 if (var->bits_per_pixel != 16)
  return var->bits_per_pixel;
 return (var->green.length == 5) ? 15 : 16;
}
