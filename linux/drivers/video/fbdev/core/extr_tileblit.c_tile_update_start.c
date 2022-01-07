
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int vmode; int yoffset; int xoffset; } ;
struct fbcon_ops {TYPE_2__ var; } ;
struct TYPE_3__ {int vmode; int yoffset; int xoffset; } ;
struct fb_info {TYPE_1__ var; struct fbcon_ops* fbcon_par; } ;


 int fb_pan_display (struct fb_info*,TYPE_2__*) ;

__attribute__((used)) static int tile_update_start(struct fb_info *info)
{
 struct fbcon_ops *ops = info->fbcon_par;
 int err;

 err = fb_pan_display(info, &ops->var);
 ops->var.xoffset = info->var.xoffset;
 ops->var.yoffset = info->var.yoffset;
 ops->var.vmode = info->var.vmode;
 return err;
}
