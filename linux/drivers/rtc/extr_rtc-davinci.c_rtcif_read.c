
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct davinci_rtc {scalar_t__ base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 rtcif_read(struct davinci_rtc *davinci_rtc, u32 addr)
{
 return readl(davinci_rtc->base + addr);
}
