
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_year; void* tm_sec; void* tm_min; void* tm_hour; void* tm_mday; void* tm_mon; } ;
struct rtc_wkalrm {struct rtc_time time; } ;
struct m48t59_private {scalar_t__ irq; int lock; } ;
struct m48t59_plat_data {int dummy; } ;
struct device {int dummy; } ;


 int EIO ;
 int M48T59_ALARM_DATE ;
 int M48T59_ALARM_HOUR ;
 int M48T59_ALARM_MIN ;
 int M48T59_ALARM_SEC ;
 int M48T59_CLEAR_BITS (int ,int ) ;
 int M48T59_CNTL ;
 int M48T59_CNTL_READ ;
 int M48T59_MONTH ;
 int M48T59_READ (int ) ;
 int M48T59_SET_BITS (int ,int ) ;
 int M48T59_WDAY ;
 int M48T59_WDAY_CB ;
 int M48T59_WDAY_CEB ;
 int M48T59_YEAR ;
 scalar_t__ NO_IRQ ;
 void* bcd2bin (int) ;
 int dev_dbg (struct device*,char*,struct rtc_time*) ;
 struct m48t59_private* dev_get_drvdata (struct device*) ;
 struct m48t59_plat_data* dev_get_platdata (struct device*) ;
 int rtc_valid_tm (struct rtc_time*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int m48t59_rtc_readalarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct m48t59_plat_data *pdata = dev_get_platdata(dev);
 struct m48t59_private *m48t59 = dev_get_drvdata(dev);
 struct rtc_time *tm = &alrm->time;
 unsigned long flags;
 u8 val;


 if (m48t59->irq == NO_IRQ)
  return -EIO;

 spin_lock_irqsave(&m48t59->lock, flags);

 M48T59_SET_BITS(M48T59_CNTL_READ, M48T59_CNTL);

 tm->tm_year = bcd2bin(M48T59_READ(M48T59_YEAR));





 tm->tm_mon = bcd2bin(M48T59_READ(M48T59_MONTH)) - 1;

 val = M48T59_READ(M48T59_WDAY);
 if ((val & M48T59_WDAY_CEB) && (val & M48T59_WDAY_CB))
  tm->tm_year += 100;

 tm->tm_mday = bcd2bin(M48T59_READ(M48T59_ALARM_DATE));
 tm->tm_hour = bcd2bin(M48T59_READ(M48T59_ALARM_HOUR));
 tm->tm_min = bcd2bin(M48T59_READ(M48T59_ALARM_MIN));
 tm->tm_sec = bcd2bin(M48T59_READ(M48T59_ALARM_SEC));


 M48T59_CLEAR_BITS(M48T59_CNTL_READ, M48T59_CNTL);
 spin_unlock_irqrestore(&m48t59->lock, flags);

 dev_dbg(dev, "RTC read alarm time %ptR\n", tm);
 return rtc_valid_tm(tm);
}
