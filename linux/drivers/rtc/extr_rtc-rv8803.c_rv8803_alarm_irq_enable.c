
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rv8803_data {int ctrl; int flags_lock; TYPE_3__* rtc; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {scalar_t__ enabled; } ;
struct TYPE_4__ {scalar_t__ enabled; } ;
struct TYPE_6__ {TYPE_2__ aie_timer; TYPE_1__ uie_rtctimer; } ;


 int RV8803_CTRL ;
 int RV8803_CTRL_AIE ;
 int RV8803_CTRL_UIE ;
 int RV8803_FLAG ;
 int RV8803_FLAG_AF ;
 int RV8803_FLAG_UF ;
 struct rv8803_data* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rv8803_read_reg (struct i2c_client*,int ) ;
 int rv8803_write_reg (struct i2c_client*,int ,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int rv8803_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct rv8803_data *rv8803 = dev_get_drvdata(dev);
 int ctrl, flags, err;

 ctrl = rv8803->ctrl;

 if (enabled) {
  if (rv8803->rtc->uie_rtctimer.enabled)
   ctrl |= RV8803_CTRL_UIE;
  if (rv8803->rtc->aie_timer.enabled)
   ctrl |= RV8803_CTRL_AIE;
 } else {
  if (!rv8803->rtc->uie_rtctimer.enabled)
   ctrl &= ~RV8803_CTRL_UIE;
  if (!rv8803->rtc->aie_timer.enabled)
   ctrl &= ~RV8803_CTRL_AIE;
 }

 mutex_lock(&rv8803->flags_lock);
 flags = rv8803_read_reg(client, RV8803_FLAG);
 if (flags < 0) {
  mutex_unlock(&rv8803->flags_lock);
  return flags;
 }
 flags &= ~(RV8803_FLAG_AF | RV8803_FLAG_UF);
 err = rv8803_write_reg(client, RV8803_FLAG, flags);
 mutex_unlock(&rv8803->flags_lock);
 if (err)
  return err;

 if (ctrl != rv8803->ctrl) {
  rv8803->ctrl = ctrl;
  err = rv8803_write_reg(client, RV8803_CTRL, rv8803->ctrl);
  if (err)
   return err;
 }

 return 0;
}
