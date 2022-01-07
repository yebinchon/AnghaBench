
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transfer_timer {int state; } ;
struct vudc {TYPE_1__* pdev; struct transfer_timer tr_timer; } ;
struct TYPE_2__ {int dev; } ;


 int VUDC_TR_STOPPED ;
 int dev_dbg (int *,char*) ;

void v_stop_timer(struct vudc *udc)
{
 struct transfer_timer *t = &udc->tr_timer;


 dev_dbg(&udc->pdev->dev, "timer stop");
 t->state = VUDC_TR_STOPPED;
}
