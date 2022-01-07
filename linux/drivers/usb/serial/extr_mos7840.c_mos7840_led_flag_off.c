
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct moschip_port {int flags; } ;


 int MOS7840_FLAG_LED_BUSY ;
 int clear_bit_unlock (int ,int *) ;
 struct moschip_port* from_timer (int ,struct timer_list*,int ) ;
 int led_timer2 ;
 struct moschip_port* mcs ;

__attribute__((used)) static void mos7840_led_flag_off(struct timer_list *t)
{
 struct moschip_port *mcs = from_timer(mcs, t, led_timer2);

 clear_bit_unlock(MOS7840_FLAG_LED_BUSY, &mcs->flags);
}
