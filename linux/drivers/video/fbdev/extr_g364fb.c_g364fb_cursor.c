
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int yoffset; } ;
struct fb_info {TYPE_1__ var; } ;
struct fb_cursor {int enable; } ;





 scalar_t__ CTLA_REG ;
 scalar_t__ CURS_POS_REG ;
 unsigned int CURS_TOGGLE ;
 int fontheight (int ) ;
 int fontwidth (int ) ;
 int p ;
 int x ;
 int y ;

int g364fb_cursor(struct fb_info *info, struct fb_cursor *cursor)
{

 switch (cursor->enable) {
 case 129:
  *(unsigned int *) CTLA_REG |= CURS_TOGGLE;
  break;

 case 128:
 case 130:
  *(unsigned int *) CTLA_REG &= ~CURS_TOGGLE;
  *(unsigned int *) CURS_POS_REG =
      ((x * fontwidth(p)) << 12) | ((y * fontheight(p)) -
        info->var.yoffset);
  break;
 }
 return 0;
}
