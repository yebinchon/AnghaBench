
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mutex {int dummy; } ;
struct ds3232 {TYPE_1__* rtc; int dev; int regmap; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct mutex ops_lock; } ;


 int DS3232_REG_CR ;
 int DS3232_REG_CR_A1IE ;
 int DS3232_REG_SR ;
 int DS3232_REG_SR_A1F ;
 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 struct ds3232* dev_get_drvdata (struct device*) ;
 int dev_warn (int ,char*,int) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int rtc_update_irq (TYPE_1__*,int,int) ;

__attribute__((used)) static irqreturn_t ds3232_irq(int irq, void *dev_id)
{
 struct device *dev = dev_id;
 struct ds3232 *ds3232 = dev_get_drvdata(dev);
 struct mutex *lock = &ds3232->rtc->ops_lock;
 int ret;
 int stat, control;

 mutex_lock(lock);

 ret = regmap_read(ds3232->regmap, DS3232_REG_SR, &stat);
 if (ret)
  goto unlock;

 if (stat & DS3232_REG_SR_A1F) {
  ret = regmap_read(ds3232->regmap, DS3232_REG_CR, &control);
  if (ret) {
   dev_warn(ds3232->dev,
     "Read Control Register error %d\n", ret);
  } else {

   control &= ~(DS3232_REG_CR_A1IE);
   ret = regmap_write(ds3232->regmap, DS3232_REG_CR,
        control);
   if (ret) {
    dev_warn(ds3232->dev,
      "Write Control Register error %d\n",
      ret);
    goto unlock;
   }


   stat &= ~DS3232_REG_SR_A1F;
   ret = regmap_write(ds3232->regmap, DS3232_REG_SR, stat);
   if (ret) {
    dev_warn(ds3232->dev,
      "Write Status Register error %d\n",
      ret);
    goto unlock;
   }

   rtc_update_irq(ds3232->rtc, 1, RTC_AF | RTC_IRQF);
  }
 }

unlock:
 mutex_unlock(lock);

 return IRQ_HANDLED;
}
