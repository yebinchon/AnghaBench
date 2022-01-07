
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1343_priv {int mutex; int rtc; int map; } ;
typedef int irqreturn_t ;


 unsigned int DS1343_A0IE ;
 int DS1343_CONTROL_REG ;
 unsigned int DS1343_IRQF0 ;
 int DS1343_STATUS_REG ;
 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t ds1343_thread(int irq, void *dev_id)
{
 struct ds1343_priv *priv = dev_id;
 unsigned int stat, control;
 int res = 0;

 mutex_lock(&priv->mutex);

 res = regmap_read(priv->map, DS1343_STATUS_REG, &stat);
 if (res)
  goto out;

 if (stat & DS1343_IRQF0) {
  stat &= ~DS1343_IRQF0;
  regmap_write(priv->map, DS1343_STATUS_REG, stat);

  res = regmap_read(priv->map, DS1343_CONTROL_REG, &control);
  if (res)
   goto out;

  control &= ~DS1343_A0IE;
  regmap_write(priv->map, DS1343_CONTROL_REG, control);

  rtc_update_irq(priv->rtc, 1, RTC_AF | RTC_IRQF);
 }

out:
 mutex_unlock(&priv->mutex);
 return IRQ_HANDLED;
}
