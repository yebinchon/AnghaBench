
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;




 int gbe_loadcmap () ;
 int gbe_turn_off () ;
 int gbe_turn_on () ;

__attribute__((used)) static int gbefb_blank(int blank, struct fb_info *info)
{

 switch (blank) {
 case 128:
  gbe_turn_on();
  gbe_loadcmap();
  break;

 case 129:
  gbe_turn_off();
  break;

 default:

  break;
 }
 return 0;
}
