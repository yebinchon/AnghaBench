
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvidia_par {int dummy; } ;
struct fb_var_screeninfo {int yoffset; scalar_t__ xoffset; } ;
struct TYPE_2__ {int line_length; } ;
struct fb_info {TYPE_1__ fix; struct nvidia_par* par; } ;


 int NVSetStartAddress (struct nvidia_par*,scalar_t__) ;

__attribute__((used)) static int nvidiafb_pan_display(struct fb_var_screeninfo *var,
    struct fb_info *info)
{
 struct nvidia_par *par = info->par;
 u32 total;

 total = var->yoffset * info->fix.line_length + var->xoffset;

 NVSetStartAddress(par, total);

 return 0;
}
