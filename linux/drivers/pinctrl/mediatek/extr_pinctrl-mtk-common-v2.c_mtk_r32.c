
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct mtk_pinctrl {scalar_t__* base; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 mtk_r32(struct mtk_pinctrl *pctl, u8 i, u32 reg)
{
 return readl_relaxed(pctl->base[i] + reg);
}
