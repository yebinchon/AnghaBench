
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int hga_clear_screen () ;
 int hga_gfx_mode () ;
 int hga_show_logo (struct fb_info*) ;
 int nologo ;

__attribute__((used)) static int hgafb_open(struct fb_info *info, int init)
{
 hga_gfx_mode();
 hga_clear_screen();
 if (!nologo) hga_show_logo(info);
 return 0;
}
