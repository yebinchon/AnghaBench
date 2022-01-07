
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int lx_blank_display (struct fb_info*,int) ;

__attribute__((used)) static int lxfb_blank(int blank_mode, struct fb_info *info)
{
 return lx_blank_display(info, blank_mode);
}
