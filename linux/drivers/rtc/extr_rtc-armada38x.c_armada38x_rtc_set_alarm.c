
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtc_wkalrm {scalar_t__ enabled; int time; } ;
struct device {int dummy; } ;
struct armada38x_rtc {int lock; TYPE_1__* data; } ;
struct TYPE_2__ {int (* unmask_interrupt ) (struct armada38x_rtc*) ;int alarm; } ;


 int ALARM_REG (int ,int ) ;
 int RTC_ALARM1 ;
 int RTC_IRQ1_CONF ;
 unsigned long RTC_IRQ_AL_EN ;
 struct armada38x_rtc* dev_get_drvdata (struct device*) ;
 int rtc_delayed_write (unsigned long,struct armada38x_rtc*,int ) ;
 unsigned long rtc_tm_to_time64 (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct armada38x_rtc*) ;

__attribute__((used)) static int armada38x_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct armada38x_rtc *rtc = dev_get_drvdata(dev);
 u32 reg = ALARM_REG(RTC_ALARM1, rtc->data->alarm);
 u32 reg_irq = ALARM_REG(RTC_IRQ1_CONF, rtc->data->alarm);
 unsigned long time, flags;

 time = rtc_tm_to_time64(&alrm->time);

 spin_lock_irqsave(&rtc->lock, flags);

 rtc_delayed_write(time, rtc, reg);

 if (alrm->enabled) {
  rtc_delayed_write(RTC_IRQ_AL_EN, rtc, reg_irq);
  rtc->data->unmask_interrupt(rtc);
 }

 spin_unlock_irqrestore(&rtc->lock, flags);

 return 0;
}
