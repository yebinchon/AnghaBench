
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtc_wkalrm {int enabled; int time; } ;
struct device {int dummy; } ;
struct armada38x_rtc {int lock; TYPE_1__* data; } ;
struct TYPE_2__ {unsigned long (* read_rtc_reg ) (struct armada38x_rtc*,int) ;int alarm; } ;


 int ALARM_REG (int ,int ) ;
 int RTC_ALARM1 ;
 int RTC_IRQ1_CONF ;
 int RTC_IRQ_AL_EN ;
 struct armada38x_rtc* dev_get_drvdata (struct device*) ;
 int rtc_time64_to_tm (unsigned long,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long stub1 (struct armada38x_rtc*,int) ;
 int stub2 (struct armada38x_rtc*,int) ;

__attribute__((used)) static int armada38x_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct armada38x_rtc *rtc = dev_get_drvdata(dev);
 unsigned long time, flags;
 u32 reg = ALARM_REG(RTC_ALARM1, rtc->data->alarm);
 u32 reg_irq = ALARM_REG(RTC_IRQ1_CONF, rtc->data->alarm);
 u32 val;

 spin_lock_irqsave(&rtc->lock, flags);

 time = rtc->data->read_rtc_reg(rtc, reg);
 val = rtc->data->read_rtc_reg(rtc, reg_irq) & RTC_IRQ_AL_EN;

 spin_unlock_irqrestore(&rtc->lock, flags);

 alrm->enabled = val ? 1 : 0;
 rtc_time64_to_tm(time, &alrm->time);

 return 0;
}
