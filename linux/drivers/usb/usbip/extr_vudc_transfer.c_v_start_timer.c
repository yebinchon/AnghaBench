
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int speed; } ;
struct transfer_timer {int state; int frame_limit; int frame_start; } ;
struct vudc {TYPE_1__ gadget; TYPE_2__* pdev; struct transfer_timer tr_timer; } ;
struct TYPE_4__ {int dev; } ;





 int dev_dbg (int *,char*) ;
 int get_frame_limit (int ) ;
 int jiffies ;
 void v_kick_timer (struct vudc*,int ) ;

void v_start_timer(struct vudc *udc)
{
 struct transfer_timer *t = &udc->tr_timer;

 dev_dbg(&udc->pdev->dev, "timer start");
 switch (t->state) {
 case 129:
  return;
 case 130:
  return v_kick_timer(udc, jiffies);
 case 128:
  t->state = 130;
  t->frame_start = jiffies;
  t->frame_limit = get_frame_limit(udc->gadget.speed);
  return v_kick_timer(udc, jiffies);
 }
}
