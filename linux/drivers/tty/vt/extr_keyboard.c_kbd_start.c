
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {int dummy; } ;


 int kbd_update_leds_helper (struct input_handle*,unsigned int*) ;
 int keyboard_tasklet ;
 unsigned int ledstate ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

__attribute__((used)) static void kbd_start(struct input_handle *handle)
{
 tasklet_disable(&keyboard_tasklet);

 if (ledstate != -1U)
  kbd_update_leds_helper(handle, &ledstate);

 tasklet_enable(&keyboard_tasklet);
}
