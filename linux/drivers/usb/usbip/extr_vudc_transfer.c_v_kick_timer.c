
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transfer_timer {int state; int timer; } ;
struct vudc {TYPE_1__* pdev; struct transfer_timer tr_timer; } ;
struct TYPE_2__ {int dev; } ;





 int dev_dbg (int *,char*) ;
 int mod_timer (int *,unsigned long) ;

void v_kick_timer(struct vudc *udc, unsigned long time)
{
 struct transfer_timer *t = &udc->tr_timer;

 dev_dbg(&udc->pdev->dev, "timer kick");
 switch (t->state) {
 case 129:
  return;
 case 130:
  t->state = 129;

 case 128:

  mod_timer(&t->timer, time);
 }
}
