
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_rtc {int dummy; } ;


 int mtk_rmw (struct mtk_rtc*,int ,int ,int ) ;

__attribute__((used)) static void mtk_set(struct mtk_rtc *rtc, u32 reg, u32 val)
{
 mtk_rmw(rtc, reg, 0, val);
}
