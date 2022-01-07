
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_year; void* tm_sec; void* tm_min; void* tm_hour; void* tm_wday; void* tm_mday; scalar_t__ tm_mon; } ;
struct m48t59_private {int lock; } ;
struct m48t59_plat_data {scalar_t__ type; } ;
struct device {int dummy; } ;


 scalar_t__ M48T59RTC_TYPE_M48T59 ;
 int M48T59_CLEAR_BITS (int ,int ) ;
 int M48T59_CNTL ;
 int M48T59_CNTL_READ ;
 int M48T59_HOUR ;
 int M48T59_MDAY ;
 int M48T59_MIN ;
 int M48T59_MONTH ;
 int M48T59_READ (int ) ;
 int M48T59_SEC ;
 int M48T59_SET_BITS (int ,int ) ;
 int M48T59_WDAY ;
 int M48T59_WDAY_CB ;
 int M48T59_WDAY_CEB ;
 int M48T59_YEAR ;
 void* bcd2bin (int) ;
 int dev_dbg (struct device*,char*,...) ;
 struct m48t59_private* dev_get_drvdata (struct device*) ;
 struct m48t59_plat_data* dev_get_platdata (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int m48t59_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct m48t59_plat_data *pdata = dev_get_platdata(dev);
 struct m48t59_private *m48t59 = dev_get_drvdata(dev);
 unsigned long flags;
 u8 val;

 spin_lock_irqsave(&m48t59->lock, flags);

 M48T59_SET_BITS(M48T59_CNTL_READ, M48T59_CNTL);

 tm->tm_year = bcd2bin(M48T59_READ(M48T59_YEAR));

 tm->tm_mon = bcd2bin(M48T59_READ(M48T59_MONTH)) - 1;
 tm->tm_mday = bcd2bin(M48T59_READ(M48T59_MDAY));

 val = M48T59_READ(M48T59_WDAY);
 if ((pdata->type == M48T59RTC_TYPE_M48T59) &&
     (val & M48T59_WDAY_CEB) && (val & M48T59_WDAY_CB)) {
  dev_dbg(dev, "Century bit is enabled\n");
  tm->tm_year += 100;
 }





 tm->tm_wday = bcd2bin(val & 0x07);
 tm->tm_hour = bcd2bin(M48T59_READ(M48T59_HOUR) & 0x3F);
 tm->tm_min = bcd2bin(M48T59_READ(M48T59_MIN) & 0x7F);
 tm->tm_sec = bcd2bin(M48T59_READ(M48T59_SEC) & 0x7F);


 M48T59_CLEAR_BITS(M48T59_CNTL_READ, M48T59_CNTL);
 spin_unlock_irqrestore(&m48t59->lock, flags);

 dev_dbg(dev, "RTC read time %ptR\n", tm);
 return 0;
}
