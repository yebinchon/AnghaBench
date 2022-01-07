
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct omap_rtc {scalar_t__ base; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static inline u8 rtc_read(struct omap_rtc *rtc, unsigned int reg)
{
 return readb(rtc->base + reg);
}
