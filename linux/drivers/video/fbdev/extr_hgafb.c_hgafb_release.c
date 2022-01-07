
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int hga_clear_screen () ;
 int hga_txt_mode () ;

__attribute__((used)) static int hgafb_release(struct fb_info *info, int init)
{
 hga_txt_mode();
 hga_clear_screen();
 return 0;
}
