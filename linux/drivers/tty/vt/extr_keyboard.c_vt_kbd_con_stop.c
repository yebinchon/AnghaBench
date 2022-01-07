
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbd_struct {int dummy; } ;


 int VC_SCROLLOCK ;
 struct kbd_struct* kbd_table ;
 int led_lock ;
 int set_leds () ;
 int set_vc_kbd_led (struct kbd_struct*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void vt_kbd_con_stop(int console)
{
 struct kbd_struct *kb = kbd_table + console;
 unsigned long flags;
 spin_lock_irqsave(&led_lock, flags);
 set_vc_kbd_led(kb, VC_SCROLLOCK);
 set_leds();
 spin_unlock_irqrestore(&led_lock, flags);
}
