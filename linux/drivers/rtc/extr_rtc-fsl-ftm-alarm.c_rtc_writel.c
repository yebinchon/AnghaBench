
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ftm_rtc {scalar_t__ base; scalar_t__ big_endian; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;
 int iowrite32be (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void rtc_writel(struct ftm_rtc *dev, u32 reg, u32 val)
{
 if (dev->big_endian)
  iowrite32be(val, dev->base + reg);
 else
  iowrite32(val, dev->base + reg);
}
