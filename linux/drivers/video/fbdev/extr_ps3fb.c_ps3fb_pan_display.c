
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps3fb_par {int pan_offset; } ;
struct fb_var_screeninfo {int yoffset; int xoffset; } ;
struct TYPE_2__ {int line_length; } ;
struct fb_info {TYPE_1__ fix; struct ps3fb_par* par; } ;


 int BPP ;

__attribute__((used)) static int ps3fb_pan_display(struct fb_var_screeninfo *var,
        struct fb_info *info)
{
 struct ps3fb_par *par = info->par;

 par->pan_offset = var->yoffset * info->fix.line_length +
     var->xoffset * BPP;
 return 0;
}
