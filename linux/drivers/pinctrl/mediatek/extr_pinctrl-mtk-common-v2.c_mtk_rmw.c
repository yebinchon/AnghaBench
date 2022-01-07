
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mtk_pinctrl {int dummy; } ;


 int mtk_r32 (struct mtk_pinctrl*,int ,int ) ;
 int mtk_w32 (struct mtk_pinctrl*,int ,int ,int ) ;

void mtk_rmw(struct mtk_pinctrl *pctl, u8 i, u32 reg, u32 mask, u32 set)
{
 u32 val;

 val = mtk_r32(pctl, i, reg);
 val &= ~mask;
 val |= set;
 mtk_w32(pctl, i, reg, val);
}
