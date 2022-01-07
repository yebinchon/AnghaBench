
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct geodefb_par {int panel_x; int panel_y; } ;
struct fb_info {struct geodefb_par* par; } ;


 int EINVAL ;
 char* panel_option ;
 int simple_strtol (char*,char**,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int parse_panel_option(struct fb_info *info)
{
 struct geodefb_par *par = info->par;

 if (strcmp(panel_option, "") != 0) {
  int x, y;
  char *s;
  x = simple_strtol(panel_option, &s, 10);
  if (!x)
   return -EINVAL;
  y = simple_strtol(s + 1, ((void*)0), 10);
  if (!y)
   return -EINVAL;
  par->panel_x = x;
  par->panel_y = y;
 }
 return 0;
}
