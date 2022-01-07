
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int vmode; int yoffset; int xoffset; } ;
struct fb_info {struct amifb_par* par; } ;
struct amifb_par {int vmode; int yoffset; int xoffset; } ;


 int FB_VMODE_YWRAP ;
 int ami_update_par (struct fb_info*) ;
 int do_vmode_pan ;

__attribute__((used)) static void ami_pan_var(struct fb_var_screeninfo *var, struct fb_info *info)
{
 struct amifb_par *par = info->par;

 par->xoffset = var->xoffset;
 par->yoffset = var->yoffset;
 if (var->vmode & FB_VMODE_YWRAP)
  par->vmode |= FB_VMODE_YWRAP;
 else
  par->vmode &= ~FB_VMODE_YWRAP;

 do_vmode_pan = 0;
 ami_update_par(info);
 do_vmode_pan = 1;
}
