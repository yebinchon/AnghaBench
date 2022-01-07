
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_pinctrl {TYPE_1__* soc; } ;
struct mtk_pin_desc {struct mtk_func_desc* funcs; } ;
struct mtk_func_desc {int muxval; scalar_t__ name; } ;
struct TYPE_2__ {struct mtk_pin_desc* pins; } ;



__attribute__((used)) static const struct mtk_func_desc *
mtk_pctrl_find_function_by_pin(struct mtk_pinctrl *hw, u32 pin_num, u32 fnum)
{
 const struct mtk_pin_desc *pin = hw->soc->pins + pin_num;
 const struct mtk_func_desc *func = pin->funcs;

 while (func && func->name) {
  if (func->muxval == fnum)
   return func;
  func++;
 }

 return ((void*)0);
}
