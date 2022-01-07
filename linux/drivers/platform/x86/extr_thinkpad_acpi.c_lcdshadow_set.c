
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lcdshadow_on_off (int) ;
 int lcdshadow_state ;

__attribute__((used)) static int lcdshadow_set(bool on)
{
 if (lcdshadow_state < 0)
  return lcdshadow_state;
 if (lcdshadow_state == on)
  return 0;
 return lcdshadow_on_off(on);
}
