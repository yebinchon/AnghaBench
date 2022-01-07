
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_rtc {int dummy; } ;


 int mtk_r32 (struct mtk_rtc*,int ) ;
 int mtk_w32 (struct mtk_rtc*,int ,int ) ;

__attribute__((used)) static void mtk_rmw(struct mtk_rtc *rtc, u32 reg, u32 mask, u32 set)
{
 u32 val;

 val = mtk_r32(rtc, reg);
 val &= ~mask;
 val |= set;
 mtk_w32(rtc, reg, val);
}
