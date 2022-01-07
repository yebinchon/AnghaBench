
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcf2123_data {TYPE_1__* rtc; int map; } ;
struct mutex {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct mutex ops_lock; } ;


 unsigned int CTRL2_AF ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PCF2123_REG_CTRL2 ;
 int RTC_AF ;
 int RTC_IRQF ;
 struct pcf2123_data* dev_get_drvdata (void*) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,unsigned int,int ) ;
 int rtc_update_irq (TYPE_1__*,int,int) ;

__attribute__((used)) static irqreturn_t pcf2123_rtc_irq(int irq, void *dev)
{
 struct pcf2123_data *pcf2123 = dev_get_drvdata(dev);
 struct mutex *lock = &pcf2123->rtc->ops_lock;
 unsigned int val = 0;
 int ret = IRQ_NONE;

 mutex_lock(lock);
 regmap_read(pcf2123->map, PCF2123_REG_CTRL2, &val);


 if (val & CTRL2_AF) {
  ret = IRQ_HANDLED;


  regmap_update_bits(pcf2123->map, PCF2123_REG_CTRL2, CTRL2_AF, 0);

  rtc_update_irq(pcf2123->rtc, 1, RTC_IRQF | RTC_AF);
 }

 mutex_unlock(lock);

 return ret;
}
