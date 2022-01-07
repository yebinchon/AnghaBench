
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ levels; } ;


 int kbd_get_valid_token_counts () ;
 TYPE_1__ kbd_info ;
 int kbd_init_info () ;
 int kbd_init_tokens () ;
 int kbd_led_present ;
 int kbd_mode_levels_count ;

__attribute__((used)) static void kbd_init(void)
{
 int ret;

 ret = kbd_init_info();
 kbd_init_tokens();




 if ((ret == 0 && (kbd_info.levels != 0 || kbd_mode_levels_count >= 2))
     || kbd_get_valid_token_counts() >= 2)
  kbd_led_present = 1;
}
