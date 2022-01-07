
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int EINVAL ;

__attribute__((used)) static int calc_button(int x)
{
 switch (x) {
 case 1:
  return BTN_LEFT;
 case 2:
  return BTN_MIDDLE;
 case 3:
  return BTN_RIGHT;
 default:
  return -EINVAL;
 }
}
