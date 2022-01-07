
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mtk_rtc {scalar_t__ base; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static void mtk_w32(struct mtk_rtc *rtc, u32 reg, u32 val)
{
 writel_relaxed(val, rtc->base + reg);
}
