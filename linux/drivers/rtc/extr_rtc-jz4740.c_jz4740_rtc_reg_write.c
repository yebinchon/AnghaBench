
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4740_rtc {scalar_t__ type; scalar_t__ base; } ;


 scalar_t__ ID_JZ4780 ;
 int jz4740_rtc_wait_write_ready (struct jz4740_rtc*) ;
 int jz4780_rtc_enable_write (struct jz4740_rtc*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline int jz4740_rtc_reg_write(struct jz4740_rtc *rtc, size_t reg,
 uint32_t val)
{
 int ret = 0;

 if (rtc->type >= ID_JZ4780)
  ret = jz4780_rtc_enable_write(rtc);
 if (ret == 0)
  ret = jz4740_rtc_wait_write_ready(rtc);
 if (ret == 0)
  writel(val, rtc->base + reg);

 return ret;
}
