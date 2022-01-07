
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbd_struct {int dummy; } ;


 struct kbd_struct* kbd_table ;
 int setledstate (struct kbd_struct*,int) ;

void vt_set_led_state(int console, int leds)
{
 struct kbd_struct *kb = kbd_table + console;
 setledstate(kb, leds);
}
