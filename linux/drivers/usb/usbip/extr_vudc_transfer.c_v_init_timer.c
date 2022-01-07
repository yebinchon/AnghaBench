
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transfer_timer {int state; int timer; } ;
struct vudc {struct transfer_timer tr_timer; } ;


 int VUDC_TR_STOPPED ;
 int timer_setup (int *,int ,int ) ;
 int v_timer ;

void v_init_timer(struct vudc *udc)
{
 struct transfer_timer *t = &udc->tr_timer;

 timer_setup(&t->timer, v_timer, 0);
 t->state = VUDC_TR_STOPPED;
}
