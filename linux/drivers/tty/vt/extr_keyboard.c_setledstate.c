
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbd_struct {int ledmode; } ;


 int LED_SHOW_FLAGS ;
 int LED_SHOW_IOCTL ;
 int led_lock ;
 unsigned int ledioctl ;
 int set_leds () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void setledstate(struct kbd_struct *kb, unsigned int led)
{
        unsigned long flags;
        spin_lock_irqsave(&led_lock, flags);
 if (!(led & ~7)) {
  ledioctl = led;
  kb->ledmode = LED_SHOW_IOCTL;
 } else
  kb->ledmode = LED_SHOW_FLAGS;

 set_leds();
 spin_unlock_irqrestore(&led_lock, flags);
}
