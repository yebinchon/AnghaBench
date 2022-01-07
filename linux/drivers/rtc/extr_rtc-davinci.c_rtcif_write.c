
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct davinci_rtc {scalar_t__ base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void rtcif_write(struct davinci_rtc *davinci_rtc,
          u32 val, u32 addr)
{
 writel(val, davinci_rtc->base + addr);
}
