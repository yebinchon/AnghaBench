
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_led_table {int state; } ;


 struct tp_led_table* led_tables ;
 int mute_led_on_off (struct tp_led_table*,int) ;

__attribute__((used)) static int tpacpi_led_set(int whichled, bool on)
{
 struct tp_led_table *t;

 t = &led_tables[whichled];
 if (t->state < 0 || t->state == on)
  return t->state;
 return mute_led_on_off(t, on);
}
