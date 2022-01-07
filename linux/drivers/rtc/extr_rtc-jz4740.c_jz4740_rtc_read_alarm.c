
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtc_wkalrm {int enabled; int pending; int time; } ;
struct jz4740_rtc {int dummy; } ;
struct device {int dummy; } ;


 int JZ_REG_RTC_CTRL ;
 int JZ_REG_RTC_SEC_ALARM ;
 int JZ_RTC_CTRL_AE ;
 int JZ_RTC_CTRL_AF ;
 struct jz4740_rtc* dev_get_drvdata (struct device*) ;
 int jz4740_rtc_reg_read (struct jz4740_rtc*,int ) ;
 int rtc_time64_to_tm (int,int *) ;

__attribute__((used)) static int jz4740_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct jz4740_rtc *rtc = dev_get_drvdata(dev);
 uint32_t secs;
 uint32_t ctrl;

 secs = jz4740_rtc_reg_read(rtc, JZ_REG_RTC_SEC_ALARM);

 ctrl = jz4740_rtc_reg_read(rtc, JZ_REG_RTC_CTRL);

 alrm->enabled = !!(ctrl & JZ_RTC_CTRL_AE);
 alrm->pending = !!(ctrl & JZ_RTC_CTRL_AF);

 rtc_time64_to_tm(secs, &alrm->time);

 return 0;
}
