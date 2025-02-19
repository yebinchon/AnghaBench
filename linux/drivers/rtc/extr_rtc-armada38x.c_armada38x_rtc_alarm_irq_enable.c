
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct armada38x_rtc {int lock; TYPE_1__* data; } ;
struct TYPE_2__ {int alarm; } ;


 int ALARM_REG (int ,int ) ;
 int RTC_IRQ1_CONF ;
 int RTC_IRQ_AL_EN ;
 struct armada38x_rtc* dev_get_drvdata (struct device*) ;
 int rtc_delayed_write (int ,struct armada38x_rtc*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int armada38x_rtc_alarm_irq_enable(struct device *dev,
      unsigned int enabled)
{
 struct armada38x_rtc *rtc = dev_get_drvdata(dev);
 u32 reg_irq = ALARM_REG(RTC_IRQ1_CONF, rtc->data->alarm);
 unsigned long flags;

 spin_lock_irqsave(&rtc->lock, flags);

 if (enabled)
  rtc_delayed_write(RTC_IRQ_AL_EN, rtc, reg_irq);
 else
  rtc_delayed_write(0, rtc, reg_irq);

 spin_unlock_irqrestore(&rtc->lock, flags);

 return 0;
}
