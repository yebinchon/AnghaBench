
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int out_height; int out_width; int pos_y; int pos_x; int channel_out; } ;
struct omapfb_plane_struct {TYPE_3__ info; int idx; int color_mode; struct omapfb_device* fbdev; } ;
struct omapfb_device {TYPE_2__* ctrl; } ;
struct fb_var_screeninfo {int yoffset; int xoffset; int bits_per_pixel; int yres; int xres; int rotate; int xres_virtual; } ;
struct TYPE_4__ {int line_length; } ;
struct fb_info {TYPE_1__ fix; struct fb_var_screeninfo var; struct omapfb_plane_struct* par; } ;
struct TYPE_5__ {int (* setup_plane ) (int ,int ,unsigned long,int ,int ,int ,int ,int ,int ) ;int (* set_rotate ) (int ) ;int (* set_scale ) (int ,int ,int ,int ,int ) ;int (* sync ) () ;} ;


 int stub1 () ;
 int stub2 (int ,int ,unsigned long,int ,int ,int ,int ,int ,int ) ;
 int stub3 (int ) ;
 int stub4 (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int ctrl_change_mode(struct fb_info *fbi)
{
 int r;
 unsigned long offset;
 struct omapfb_plane_struct *plane = fbi->par;
 struct omapfb_device *fbdev = plane->fbdev;
 struct fb_var_screeninfo *var = &fbi->var;

 offset = var->yoffset * fbi->fix.line_length +
   var->xoffset * var->bits_per_pixel / 8;

 if (fbdev->ctrl->sync)
  fbdev->ctrl->sync();
 r = fbdev->ctrl->setup_plane(plane->idx, plane->info.channel_out,
     offset, var->xres_virtual,
     plane->info.pos_x, plane->info.pos_y,
     var->xres, var->yres, plane->color_mode);
 if (r < 0)
  return r;

 if (fbdev->ctrl->set_rotate != ((void*)0)) {
  r = fbdev->ctrl->set_rotate(var->rotate);
  if (r < 0)
   return r;
 }

 if (fbdev->ctrl->set_scale != ((void*)0))
  r = fbdev->ctrl->set_scale(plane->idx,
       var->xres, var->yres,
       plane->info.out_width,
       plane->info.out_height);

 return r;
}
