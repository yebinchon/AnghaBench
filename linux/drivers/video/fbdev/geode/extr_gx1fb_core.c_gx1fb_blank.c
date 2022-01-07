
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct geodefb_par {TYPE_1__* vid_ops; } ;
struct fb_info {struct geodefb_par* par; } ;
struct TYPE_2__ {int (* blank_display ) (struct fb_info*,int) ;} ;


 int stub1 (struct fb_info*,int) ;

__attribute__((used)) static int gx1fb_blank(int blank_mode, struct fb_info *info)
{
 struct geodefb_par *par = info->par;

 return par->vid_ops->blank_display(info, blank_mode);
}
