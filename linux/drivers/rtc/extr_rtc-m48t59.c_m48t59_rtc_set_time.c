
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_year; int tm_mday; int tm_hour; int tm_min; int tm_sec; int tm_wday; int tm_mon; } ;
struct m48t59_private {int lock; } ;
struct m48t59_plat_data {scalar_t__ type; } ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ M48T59RTC_TYPE_M48T59 ;
 int M48T59_CLEAR_BITS (int ,int ) ;
 int M48T59_CNTL ;
 int M48T59_CNTL_WRITE ;
 int M48T59_HOUR ;
 int M48T59_MDAY ;
 int M48T59_MIN ;
 int M48T59_MONTH ;
 int M48T59_SEC ;
 int M48T59_SET_BITS (int ,int ) ;
 int M48T59_WDAY ;
 int M48T59_WDAY_CB ;
 int M48T59_WDAY_CEB ;
 int M48T59_WRITE (int,int ) ;
 int M48T59_YEAR ;
 int bin2bcd (int) ;
 int dev_dbg (struct device*,char*,int,int ,int,int,int,int) ;
 struct m48t59_private* dev_get_drvdata (struct device*) ;
 struct m48t59_plat_data* dev_get_platdata (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int m48t59_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct m48t59_plat_data *pdata = dev_get_platdata(dev);
 struct m48t59_private *m48t59 = dev_get_drvdata(dev);
 unsigned long flags;
 u8 val = 0;
 int year = tm->tm_year;






 dev_dbg(dev, "RTC set time %04d-%02d-%02d %02d/%02d/%02d\n",
  year + 1900, tm->tm_mon, tm->tm_mday,
  tm->tm_hour, tm->tm_min, tm->tm_sec);

 if (year < 0)
  return -EINVAL;

 spin_lock_irqsave(&m48t59->lock, flags);

 M48T59_SET_BITS(M48T59_CNTL_WRITE, M48T59_CNTL);

 M48T59_WRITE((bin2bcd(tm->tm_sec) & 0x7F), M48T59_SEC);
 M48T59_WRITE((bin2bcd(tm->tm_min) & 0x7F), M48T59_MIN);
 M48T59_WRITE((bin2bcd(tm->tm_hour) & 0x3F), M48T59_HOUR);
 M48T59_WRITE((bin2bcd(tm->tm_mday) & 0x3F), M48T59_MDAY);

 M48T59_WRITE((bin2bcd(tm->tm_mon + 1) & 0x1F), M48T59_MONTH);
 M48T59_WRITE(bin2bcd(year % 100), M48T59_YEAR);

 if (pdata->type == M48T59RTC_TYPE_M48T59 && (year / 100))
  val = (M48T59_WDAY_CEB | M48T59_WDAY_CB);
 val |= (bin2bcd(tm->tm_wday) & 0x07);
 M48T59_WRITE(val, M48T59_WDAY);


 M48T59_CLEAR_BITS(M48T59_CNTL_WRITE, M48T59_CNTL);
 spin_unlock_irqrestore(&m48t59->lock, flags);
 return 0;
}
