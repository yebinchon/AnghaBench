
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbd_struct {int dummy; } ;


 struct kbd_struct* kbd_table ;
 int led_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vc_kbd_led (struct kbd_struct*,int) ;

int vt_get_leds(int console, int flag)
{
 struct kbd_struct *kb = kbd_table + console;
 int ret;
 unsigned long flags;

 spin_lock_irqsave(&led_lock, flags);
 ret = vc_kbd_led(kb, flag);
 spin_unlock_irqrestore(&led_lock, flags);

 return ret;
}
