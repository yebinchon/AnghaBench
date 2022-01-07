
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct moschip_port {int led_timer2; } ;


 int LED_OFF_MS ;
 int MODEM_CONTROL_REGISTER ;
 struct moschip_port* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int led_timer1 ;
 struct moschip_port* mcs ;
 int mod_timer (int *,scalar_t__) ;
 int mos7840_set_led_async (struct moschip_port*,int,int ) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void mos7840_led_off(struct timer_list *t)
{
 struct moschip_port *mcs = from_timer(mcs, t, led_timer1);


 mos7840_set_led_async(mcs, 0x0300, MODEM_CONTROL_REGISTER);
 mod_timer(&mcs->led_timer2,
    jiffies + msecs_to_jiffies(LED_OFF_MS));
}
