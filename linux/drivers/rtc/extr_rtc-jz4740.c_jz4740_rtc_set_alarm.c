
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtc_wkalrm {int enabled; int time; } ;
struct jz4740_rtc {int dummy; } ;
struct device {int dummy; } ;


 int JZ_REG_RTC_SEC_ALARM ;
 int JZ_RTC_CTRL_AE ;
 int JZ_RTC_CTRL_AF_IRQ ;
 struct jz4740_rtc* dev_get_drvdata (struct device*) ;
 int jz4740_rtc_ctrl_set_bits (struct jz4740_rtc*,int,int ) ;
 int jz4740_rtc_reg_write (struct jz4740_rtc*,int ,int ) ;
 int lower_32_bits (int ) ;
 int rtc_tm_to_time64 (int *) ;

__attribute__((used)) static int jz4740_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 int ret;
 struct jz4740_rtc *rtc = dev_get_drvdata(dev);
 uint32_t secs = lower_32_bits(rtc_tm_to_time64(&alrm->time));

 ret = jz4740_rtc_reg_write(rtc, JZ_REG_RTC_SEC_ALARM, secs);
 if (!ret)
  ret = jz4740_rtc_ctrl_set_bits(rtc,
   JZ_RTC_CTRL_AE | JZ_RTC_CTRL_AF_IRQ, alrm->enabled);

 return ret;
}
