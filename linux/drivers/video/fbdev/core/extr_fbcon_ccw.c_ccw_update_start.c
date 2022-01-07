
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int vmode; scalar_t__ yoffset; scalar_t__ xoffset; } ;
struct fbcon_ops {TYPE_3__ var; TYPE_1__* p; } ;
struct TYPE_5__ {int vmode; scalar_t__ yoffset; scalar_t__ xoffset; scalar_t__ yres; } ;
struct fb_info {TYPE_2__ var; struct fbcon_ops* fbcon_par; } ;
struct TYPE_4__ {int scrollmode; } ;


 scalar_t__ GETVYRES (int ,struct fb_info*) ;
 int fb_pan_display (struct fb_info*,TYPE_3__*) ;

__attribute__((used)) static int ccw_update_start(struct fb_info *info)
{
 struct fbcon_ops *ops = info->fbcon_par;
 u32 yoffset;
 u32 vyres = GETVYRES(ops->p->scrollmode, info);
 int err;

 yoffset = (vyres - info->var.yres) - ops->var.xoffset;
 ops->var.xoffset = ops->var.yoffset;
 ops->var.yoffset = yoffset;
 err = fb_pan_display(info, &ops->var);
 ops->var.xoffset = info->var.xoffset;
 ops->var.yoffset = info->var.yoffset;
 ops->var.vmode = info->var.vmode;
 return err;
}
