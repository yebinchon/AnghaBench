
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_rtc {int dummy; } ;


 scalar_t__ OMAP_RTC_SCRATCH0_REG ;
 int rtc_readl (struct omap_rtc*,scalar_t__) ;

__attribute__((used)) static int omap_rtc_scratch_read(void *priv, unsigned int offset, void *_val,
     size_t bytes)
{
 struct omap_rtc *rtc = priv;
 u32 *val = _val;
 int i;

 for (i = 0; i < bytes / 4; i++)
  val[i] = rtc_readl(rtc,
       OMAP_RTC_SCRATCH0_REG + offset + (i * 4));

 return 0;
}
