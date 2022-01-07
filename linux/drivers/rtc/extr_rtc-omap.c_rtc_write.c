
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct omap_rtc {scalar_t__ base; } ;


 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void rtc_write(struct omap_rtc *rtc, unsigned int reg, u8 val)
{
 writeb(val, rtc->base + reg);
}
