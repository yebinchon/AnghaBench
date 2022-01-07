
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mtk_rtc {scalar_t__ base; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 mtk_r32(struct mtk_rtc *rtc, u32 reg)
{
 return readl_relaxed(rtc->base + reg);
}
