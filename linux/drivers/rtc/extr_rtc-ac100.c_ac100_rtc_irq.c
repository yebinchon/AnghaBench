
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct ac100_rtc_dev {TYPE_1__* rtc; int dev; struct regmap* regmap; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int ops_lock; } ;


 unsigned int AC100_ALM_INT_ENABLE ;
 int AC100_ALM_INT_STA ;
 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 int ac100_rtc_alarm_irq_enable (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_write (struct regmap*,int ,unsigned int) ;
 int rtc_update_irq (TYPE_1__*,int,int) ;

__attribute__((used)) static irqreturn_t ac100_rtc_irq(int irq, void *data)
{
 struct ac100_rtc_dev *chip = data;
 struct regmap *regmap = chip->regmap;
 unsigned int val = 0;
 int ret;

 mutex_lock(&chip->rtc->ops_lock);


 ret = regmap_read(regmap, AC100_ALM_INT_STA, &val);
 if (ret)
  goto out;

 if (val & AC100_ALM_INT_ENABLE) {

  rtc_update_irq(chip->rtc, 1, RTC_AF | RTC_IRQF);


  ret = regmap_write(regmap, AC100_ALM_INT_STA, val);
  if (ret)
   goto out;


  ret = ac100_rtc_alarm_irq_enable(chip->dev, 0);
  if (ret)
   goto out;
 }

out:
 mutex_unlock(&chip->rtc->ops_lock);
 return IRQ_HANDLED;
}
