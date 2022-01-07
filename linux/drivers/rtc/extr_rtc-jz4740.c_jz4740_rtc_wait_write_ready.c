
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4740_rtc {int dummy; } ;


 int EIO ;
 int JZ_REG_RTC_CTRL ;
 int JZ_RTC_CTRL_WRDY ;
 int jz4740_rtc_reg_read (struct jz4740_rtc*,int ) ;

__attribute__((used)) static int jz4740_rtc_wait_write_ready(struct jz4740_rtc *rtc)
{
 uint32_t ctrl;
 int timeout = 10000;

 do {
  ctrl = jz4740_rtc_reg_read(rtc, JZ_REG_RTC_CTRL);
 } while (!(ctrl & JZ_RTC_CTRL_WRDY) && --timeout);

 return timeout ? 0 : -EIO;
}
