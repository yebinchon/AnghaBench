
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int hga_blank (int) ;

__attribute__((used)) static int hgafb_blank(int blank_mode, struct fb_info *info)
{
 hga_blank(blank_mode);
 return 0;
}
