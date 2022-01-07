
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq24257_state {int power_good; int fault; int status; } ;
struct bq24257_device {int charger; int lock; struct bq24257_state state; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int bq24257_get_chip_state (struct bq24257_device*,struct bq24257_state*) ;
 int bq24257_handle_state_change (struct bq24257_device*,struct bq24257_state*) ;
 int bq24257_state_changed (struct bq24257_device*,struct bq24257_state*) ;
 int dev_dbg (int ,char*,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int power_supply_changed (int ) ;

__attribute__((used)) static irqreturn_t bq24257_irq_handler_thread(int irq, void *private)
{
 int ret;
 struct bq24257_device *bq = private;
 struct bq24257_state state;

 ret = bq24257_get_chip_state(bq, &state);
 if (ret < 0)
  return IRQ_HANDLED;

 if (!bq24257_state_changed(bq, &state))
  return IRQ_HANDLED;

 dev_dbg(bq->dev, "irq(state changed): status/fault/pg = %d/%d/%d\n",
  state.status, state.fault, state.power_good);

 bq24257_handle_state_change(bq, &state);

 mutex_lock(&bq->lock);
 bq->state = state;
 mutex_unlock(&bq->lock);

 power_supply_changed(bq->charger);

 return IRQ_HANDLED;
}
