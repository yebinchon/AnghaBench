
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ levels; } ;


 TYPE_1__ kbd_info ;
 scalar_t__ kbd_mode_levels_count ;

__attribute__((used)) static unsigned int kbd_get_max_level(void)
{
 if (kbd_info.levels != 0)
  return kbd_info.levels;
 if (kbd_mode_levels_count > 0)
  return kbd_mode_levels_count - 1;
 return 0;
}
