
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mutex {int dummy; } ;
struct ds1307 {TYPE_1__* rtc; int regmap; } ;
typedef int irqreturn_t ;
typedef int ctl ;
struct TYPE_2__ {struct mutex ops_lock; } ;


 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 int RX8130_REG_CONTROL0_AIE ;
 int RX8130_REG_EXTENSION ;
 int RX8130_REG_FLAG_AF ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int regmap_bulk_read (int ,int ,int*,int) ;
 int regmap_bulk_write (int ,int ,int*,int) ;
 int rtc_update_irq (TYPE_1__*,int,int) ;

__attribute__((used)) static irqreturn_t rx8130_irq(int irq, void *dev_id)
{
 struct ds1307 *ds1307 = dev_id;
 struct mutex *lock = &ds1307->rtc->ops_lock;
 u8 ctl[3];
 int ret;

 mutex_lock(lock);


 ret = regmap_bulk_read(ds1307->regmap, RX8130_REG_EXTENSION, ctl,
          sizeof(ctl));
 if (ret < 0)
  goto out;
 if (!(ctl[1] & RX8130_REG_FLAG_AF))
  goto out;
 ctl[1] &= ~RX8130_REG_FLAG_AF;
 ctl[2] &= ~RX8130_REG_CONTROL0_AIE;

 ret = regmap_bulk_write(ds1307->regmap, RX8130_REG_EXTENSION, ctl,
    sizeof(ctl));
 if (ret < 0)
  goto out;

 rtc_update_irq(ds1307->rtc, 1, RTC_AF | RTC_IRQF);

out:
 mutex_unlock(lock);

 return IRQ_HANDLED;
}
