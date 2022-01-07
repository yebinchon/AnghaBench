
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq25890_state {int dummy; } ;
struct bq25890_device {int charger; int lock; struct bq25890_state state; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int bq25890_get_chip_state (struct bq25890_device*,struct bq25890_state*) ;
 int bq25890_handle_state_change (struct bq25890_device*,struct bq25890_state*) ;
 int bq25890_state_changed (struct bq25890_device*,struct bq25890_state*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int power_supply_changed (int ) ;

__attribute__((used)) static irqreturn_t bq25890_irq_handler_thread(int irq, void *private)
{
 struct bq25890_device *bq = private;
 int ret;
 struct bq25890_state state;

 ret = bq25890_get_chip_state(bq, &state);
 if (ret < 0)
  goto handled;

 if (!bq25890_state_changed(bq, &state))
  goto handled;

 bq25890_handle_state_change(bq, &state);

 mutex_lock(&bq->lock);
 bq->state = state;
 mutex_unlock(&bq->lock);

 power_supply_changed(bq->charger);

handled:
 return IRQ_HANDLED;
}
