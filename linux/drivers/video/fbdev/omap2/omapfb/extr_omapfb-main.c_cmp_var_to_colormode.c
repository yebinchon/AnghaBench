
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_colormode {scalar_t__ bits_per_pixel; int transp; int blue; int green; int red; } ;
struct TYPE_2__ {scalar_t__ length; } ;
struct fb_var_screeninfo {scalar_t__ bits_per_pixel; TYPE_1__ transp; TYPE_1__ blue; TYPE_1__ green; TYPE_1__ red; } ;


 scalar_t__ cmp_component (TYPE_1__*,int *) ;

__attribute__((used)) static bool cmp_var_to_colormode(struct fb_var_screeninfo *var,
  struct omapfb_colormode *color)
{
 if (var->bits_per_pixel == 0 ||
   var->red.length == 0 ||
   var->blue.length == 0 ||
   var->green.length == 0)
  return 0;

 return var->bits_per_pixel == color->bits_per_pixel &&
  cmp_component(&var->red, &color->red) &&
  cmp_component(&var->green, &color->green) &&
  cmp_component(&var->blue, &color->blue) &&
  cmp_component(&var->transp, &color->transp);
}
