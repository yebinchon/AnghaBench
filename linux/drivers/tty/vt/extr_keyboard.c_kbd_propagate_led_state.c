
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int input_handler_for_each_handle (int *,unsigned int*,int ) ;
 int kbd_handler ;
 int kbd_update_leds_helper ;

__attribute__((used)) static void kbd_propagate_led_state(unsigned int old_state,
        unsigned int new_state)
{
 input_handler_for_each_handle(&kbd_handler, &new_state,
          kbd_update_leds_helper);
}
