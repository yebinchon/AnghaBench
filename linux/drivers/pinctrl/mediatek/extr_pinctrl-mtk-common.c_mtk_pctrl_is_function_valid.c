
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mtk_pinctrl {TYPE_1__* devdata; } ;
struct TYPE_4__ {scalar_t__ number; } ;
struct mtk_desc_pin {struct mtk_desc_function* functions; TYPE_2__ pin; } ;
struct mtk_desc_function {scalar_t__ muxval; scalar_t__ name; } ;
struct TYPE_3__ {int npins; struct mtk_desc_pin* pins; } ;



__attribute__((used)) static bool mtk_pctrl_is_function_valid(struct mtk_pinctrl *pctl,
  u32 pin_num, u32 fnum)
{
 int i;

 for (i = 0; i < pctl->devdata->npins; i++) {
  const struct mtk_desc_pin *pin = pctl->devdata->pins + i;

  if (pin->pin.number == pin_num) {
   const struct mtk_desc_function *func =
     pin->functions;

   while (func && func->name) {
    if (func->muxval == fnum)
     return 1;
    func++;
   }

   break;
  }
 }

 return 0;
}
