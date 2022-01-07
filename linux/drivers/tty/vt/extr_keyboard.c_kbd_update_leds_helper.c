
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_handle {TYPE_1__* dev; } ;
struct TYPE_2__ {int evbit; } ;


 int EV_LED ;
 int EV_SYN ;
 int LED_CAPSL ;
 int LED_NUML ;
 int LED_SCROLLL ;
 int SYN_REPORT ;
 int input_inject_event (struct input_handle*,int ,int ,int) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int kbd_update_leds_helper(struct input_handle *handle, void *data)
{
 unsigned int leds = *(unsigned int *)data;

 if (test_bit(EV_LED, handle->dev->evbit)) {
  input_inject_event(handle, EV_LED, LED_SCROLLL, !!(leds & 0x01));
  input_inject_event(handle, EV_LED, LED_NUML, !!(leds & 0x02));
  input_inject_event(handle, EV_LED, LED_CAPSL, !!(leds & 0x04));
  input_inject_event(handle, EV_SYN, SYN_REPORT, 0);
 }

 return 0;
}
