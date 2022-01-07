
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int intelfbhw_do_blank (int,struct fb_info*) ;

__attribute__((used)) static int intelfb_blank(int blank, struct fb_info *info)
{
 intelfbhw_do_blank(blank, info);
 return 0;
}
