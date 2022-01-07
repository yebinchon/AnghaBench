
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 scalar_t__ CTLA_REG ;
 unsigned int FORCE_BLANK ;

__attribute__((used)) static int g364fb_blank(int blank, struct fb_info *info)
{
 if (blank)
  *(unsigned int *) CTLA_REG |= FORCE_BLANK;
 else
  *(unsigned int *) CTLA_REG &= ~FORCE_BLANK;
 return 0;
}
