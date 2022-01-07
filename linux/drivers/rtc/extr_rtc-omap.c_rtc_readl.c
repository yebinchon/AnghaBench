
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_rtc {scalar_t__ base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 rtc_readl(struct omap_rtc *rtc, unsigned int reg)
{
 return readl(rtc->base + reg);
}
