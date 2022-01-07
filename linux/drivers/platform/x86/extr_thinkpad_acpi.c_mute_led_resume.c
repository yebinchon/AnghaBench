
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_led_table {scalar_t__ state; } ;


 int TPACPI_LED_MAX ;
 struct tp_led_table* led_tables ;
 int mute_led_on_off (struct tp_led_table*,scalar_t__) ;

__attribute__((used)) static void mute_led_resume(void)
{
 int i;

 for (i = 0; i < TPACPI_LED_MAX; i++) {
  struct tp_led_table *t = &led_tables[i];
  if (t->state >= 0)
   mute_led_on_off(t, t->state);
 }
}
