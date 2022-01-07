
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lockstate; } ;


 unsigned int getleds () ;
 TYPE_1__* kbd ;
 int kbd_propagate_led_state (unsigned int,unsigned int) ;
 int led_lock ;
 unsigned int ledstate ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void kbd_bh(unsigned long dummy)
{
 unsigned int leds;
 unsigned long flags;

 spin_lock_irqsave(&led_lock, flags);
 leds = getleds();
 leds |= (unsigned int)kbd->lockstate << 8;
 spin_unlock_irqrestore(&led_lock, flags);

 if (leds != ledstate) {
  kbd_propagate_led_state(ledstate, leds);
  ledstate = leds;
 }
}
