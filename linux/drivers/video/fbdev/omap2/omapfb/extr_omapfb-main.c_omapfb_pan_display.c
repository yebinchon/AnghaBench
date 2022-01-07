
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_info {int region; int id; } ;
struct fb_var_screeninfo {scalar_t__ xoffset; scalar_t__ yoffset; } ;
struct fb_info {struct fb_var_screeninfo var; } ;


 int DBG (char*,int ) ;
 struct omapfb_info* FB2OFB (struct fb_info*) ;
 int omapfb_apply_changes (struct fb_info*,int ) ;
 int omapfb_get_mem_region (int ) ;
 int omapfb_put_mem_region (int ) ;

__attribute__((used)) static int omapfb_pan_display(struct fb_var_screeninfo *var,
  struct fb_info *fbi)
{
 struct omapfb_info *ofbi = FB2OFB(fbi);
 struct fb_var_screeninfo new_var;
 int r;

 DBG("pan_display(%d)\n", FB2OFB(fbi)->id);

 if (var->xoffset == fbi->var.xoffset &&
     var->yoffset == fbi->var.yoffset)
  return 0;

 new_var = fbi->var;
 new_var.xoffset = var->xoffset;
 new_var.yoffset = var->yoffset;

 fbi->var = new_var;

 omapfb_get_mem_region(ofbi->region);

 r = omapfb_apply_changes(fbi, 0);

 omapfb_put_mem_region(ofbi->region);

 return r;
}
