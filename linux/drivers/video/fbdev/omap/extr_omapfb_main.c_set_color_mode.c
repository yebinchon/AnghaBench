
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omapfb_plane_struct {int color_mode; TYPE_2__* fbdev; } ;
struct fb_var_screeninfo {int nonstd; int bits_per_pixel; } ;
struct TYPE_4__ {TYPE_1__* panel; } ;
struct TYPE_3__ {int bpp; } ;


 int EINVAL ;
 int OMAPFB_COLOR_CLUT_1BPP ;
 int OMAPFB_COLOR_CLUT_2BPP ;
 int OMAPFB_COLOR_CLUT_4BPP ;
 int OMAPFB_COLOR_CLUT_8BPP ;
 int OMAPFB_COLOR_RGB444 ;
 int OMAPFB_COLOR_RGB565 ;




__attribute__((used)) static int set_color_mode(struct omapfb_plane_struct *plane,
     struct fb_var_screeninfo *var)
{
 switch (var->nonstd) {
 case 0:
  break;
 case 129:
  var->bits_per_pixel = 16;
  plane->color_mode = var->nonstd;
  return 0;
 case 130:
  var->bits_per_pixel = 12;
  plane->color_mode = var->nonstd;
  return 0;
 case 128:
  var->bits_per_pixel = 16;
  plane->color_mode = var->nonstd;
  return 0;
 default:
  return -EINVAL;
 }

 switch (var->bits_per_pixel) {
 case 1:
  plane->color_mode = OMAPFB_COLOR_CLUT_1BPP;
  return 0;
 case 2:
  plane->color_mode = OMAPFB_COLOR_CLUT_2BPP;
  return 0;
 case 4:
  plane->color_mode = OMAPFB_COLOR_CLUT_4BPP;
  return 0;
 case 8:
  plane->color_mode = OMAPFB_COLOR_CLUT_8BPP;
  return 0;
 case 12:
  var->bits_per_pixel = 16;

 case 16:
  if (plane->fbdev->panel->bpp == 12)
   plane->color_mode = OMAPFB_COLOR_RGB444;
  else
   plane->color_mode = OMAPFB_COLOR_RGB565;
  return 0;
 default:
  return -EINVAL;
 }
}
