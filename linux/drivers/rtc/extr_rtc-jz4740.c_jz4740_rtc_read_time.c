
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtc_time {int dummy; } ;
struct jz4740_rtc {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int JZ_REG_RTC_SCRATCHPAD ;
 int JZ_REG_RTC_SEC ;
 struct jz4740_rtc* dev_get_drvdata (struct device*) ;
 int jz4740_rtc_reg_read (struct jz4740_rtc*,int ) ;
 int rtc_time64_to_tm (int,struct rtc_time*) ;

__attribute__((used)) static int jz4740_rtc_read_time(struct device *dev, struct rtc_time *time)
{
 struct jz4740_rtc *rtc = dev_get_drvdata(dev);
 uint32_t secs, secs2;
 int timeout = 5;

 if (jz4740_rtc_reg_read(rtc, JZ_REG_RTC_SCRATCHPAD) != 0x12345678)
  return -EINVAL;





 secs = jz4740_rtc_reg_read(rtc, JZ_REG_RTC_SEC);
 secs2 = jz4740_rtc_reg_read(rtc, JZ_REG_RTC_SEC);

 while (secs != secs2 && --timeout) {
  secs = secs2;
  secs2 = jz4740_rtc_reg_read(rtc, JZ_REG_RTC_SEC);
 }

 if (timeout == 0)
  return -EIO;

 rtc_time64_to_tm(secs, time);

 return 0;
}
