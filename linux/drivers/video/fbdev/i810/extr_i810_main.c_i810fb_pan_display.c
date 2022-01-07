
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i810fb_par {int depth; } ;
struct fb_var_screeninfo {int xoffset; int yoffset; } ;
struct TYPE_2__ {int line_length; } ;
struct fb_info {TYPE_1__ fix; struct i810fb_par* par; } ;


 int i810fb_load_front (int,struct fb_info*) ;

__attribute__((used)) static int i810fb_pan_display(struct fb_var_screeninfo *var,
         struct fb_info *info)
{
 struct i810fb_par *par = info->par;
 u32 total;

 total = var->xoffset * par->depth +
  var->yoffset * info->fix.line_length;
 i810fb_load_front(total, info);

 return 0;
}
