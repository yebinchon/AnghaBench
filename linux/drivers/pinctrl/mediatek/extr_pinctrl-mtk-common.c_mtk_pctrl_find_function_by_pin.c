
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_pinctrl {TYPE_1__* devdata; } ;
struct mtk_desc_pin {struct mtk_desc_function* functions; } ;
struct mtk_desc_function {int muxval; scalar_t__ name; } ;
struct TYPE_2__ {struct mtk_desc_pin* pins; } ;



__attribute__((used)) static const struct mtk_desc_function *mtk_pctrl_find_function_by_pin(
  struct mtk_pinctrl *pctl, u32 pin_num, u32 fnum)
{
 const struct mtk_desc_pin *pin = pctl->devdata->pins + pin_num;
 const struct mtk_desc_function *func = pin->functions;

 while (func && func->name) {
  if (func->muxval == fnum)
   return func;
  func++;
 }

 return ((void*)0);
}
