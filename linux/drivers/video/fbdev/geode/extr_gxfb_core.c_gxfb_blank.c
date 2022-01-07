
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int gx_blank_display (struct fb_info*,int) ;

__attribute__((used)) static int gxfb_blank(int blank_mode, struct fb_info *info)
{
 return gx_blank_display(info, blank_mode);
}
