
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int dummy; } ;



int fb_parse_edid(unsigned char *edid, struct fb_var_screeninfo *var)
{
 return 1;
}
