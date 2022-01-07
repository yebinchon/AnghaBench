
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int* adaptive_keyboard_modes ;

__attribute__((used)) static int adaptive_keyboard_get_next_mode(int mode)
{
 size_t i;
 size_t max_mode = ARRAY_SIZE(adaptive_keyboard_modes) - 1;

 for (i = 0; i <= max_mode; i++) {
  if (adaptive_keyboard_modes[i] == mode)
   break;
 }

 if (i >= max_mode)
  i = 0;
 else
  i++;

 return adaptive_keyboard_modes[i];
}
