
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4740_rtc {scalar_t__ base; } ;


 int EIO ;
 scalar_t__ JZ_REG_RTC_WENR ;
 int JZ_RTC_WENR_MAGIC ;
 int JZ_RTC_WENR_WEN ;
 int jz4740_rtc_wait_write_ready (struct jz4740_rtc*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline int jz4780_rtc_enable_write(struct jz4740_rtc *rtc)
{
 uint32_t ctrl;
 int ret, timeout = 10000;

 ret = jz4740_rtc_wait_write_ready(rtc);
 if (ret != 0)
  return ret;

 writel(JZ_RTC_WENR_MAGIC, rtc->base + JZ_REG_RTC_WENR);

 do {
  ctrl = readl(rtc->base + JZ_REG_RTC_WENR);
 } while (!(ctrl & JZ_RTC_WENR_WEN) && --timeout);

 return timeout ? 0 : -EIO;
}
