
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
typedef int u32 ;
struct TYPE_6__ {int length; } ;
struct TYPE_5__ {int offset; int length; } ;
struct TYPE_4__ {int offset; int length; } ;
struct fb_var_screeninfo {TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; } ;
struct fb_info {scalar_t__ pseudo_palette; struct fb_var_screeninfo var; } ;
typedef enum omapfb_color_format { ____Placeholder_omapfb_color_format } omapfb_color_format ;


 int BUG () ;
 int EINVAL ;
__attribute__((used)) static int _setcolreg(struct fb_info *fbi, u_int regno, u_int red, u_int green,
  u_int blue, u_int transp, int update_hw_pal)
{


 struct fb_var_screeninfo *var = &fbi->var;
 int r = 0;

 enum omapfb_color_format mode = 133;


 switch (mode) {
 case 129:
 case 130:
 case 128:
  r = -EINVAL;
  break;
 case 135:
 case 136:
 case 137:
 case 138:






  r = -EINVAL;
  break;
 case 131:
 case 132:
 case 134:
 case 133:
  if (r != 0)
   break;

  if (regno < 16) {
   u32 pal;
   pal = ((red >> (16 - var->red.length)) <<
     var->red.offset) |
    ((green >> (16 - var->green.length)) <<
     var->green.offset) |
    (blue >> (16 - var->blue.length));
   ((u32 *)(fbi->pseudo_palette))[regno] = pal;
  }
  break;
 default:
  BUG();
 }
 return r;
}
