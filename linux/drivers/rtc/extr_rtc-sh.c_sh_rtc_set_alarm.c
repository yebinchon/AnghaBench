
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_rtc {int lock; scalar_t__ regbase; } ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; } ;
struct rtc_wkalrm {scalar_t__ enabled; struct rtc_time time; } ;
struct device {int dummy; } ;


 scalar_t__ RCR1 ;
 unsigned int RCR1_AF ;
 unsigned int RCR1_AIE ;
 int RDAYAR ;
 int RHRAR ;
 int RMINAR ;
 int RMONAR ;
 int RSECAR ;
 int RWKAR ;
 struct sh_rtc* dev_get_drvdata (struct device*) ;
 unsigned int readb (scalar_t__) ;
 int sh_rtc_write_alarm_value (struct sh_rtc*,int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static int sh_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *wkalrm)
{
 struct sh_rtc *rtc = dev_get_drvdata(dev);
 unsigned int rcr1;
 struct rtc_time *tm = &wkalrm->time;
 int mon;

 spin_lock_irq(&rtc->lock);


 rcr1 = readb(rtc->regbase + RCR1);
 rcr1 &= ~(RCR1_AF | RCR1_AIE);
 writeb(rcr1, rtc->regbase + RCR1);


 sh_rtc_write_alarm_value(rtc, tm->tm_sec, RSECAR);
 sh_rtc_write_alarm_value(rtc, tm->tm_min, RMINAR);
 sh_rtc_write_alarm_value(rtc, tm->tm_hour, RHRAR);
 sh_rtc_write_alarm_value(rtc, tm->tm_wday, RWKAR);
 sh_rtc_write_alarm_value(rtc, tm->tm_mday, RDAYAR);
 mon = tm->tm_mon;
 if (mon >= 0)
  mon += 1;
 sh_rtc_write_alarm_value(rtc, mon, RMONAR);

 if (wkalrm->enabled) {
  rcr1 |= RCR1_AIE;
  writeb(rcr1, rtc->regbase + RCR1);
 }

 spin_unlock_irq(&rtc->lock);

 return 0;
}
