
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct stm32_pinctrl {int npins; struct stm32_desc_pin* pins; } ;
struct TYPE_2__ {scalar_t__ number; } ;
struct stm32_desc_pin {TYPE_1__ pin; struct stm32_desc_function* functions; } ;
struct stm32_desc_function {scalar_t__ num; scalar_t__ name; } ;



__attribute__((used)) static bool stm32_pctrl_is_function_valid(struct stm32_pinctrl *pctl,
  u32 pin_num, u32 fnum)
{
 int i;

 for (i = 0; i < pctl->npins; i++) {
  const struct stm32_desc_pin *pin = pctl->pins + i;
  const struct stm32_desc_function *func = pin->functions;

  if (pin->pin.number != pin_num)
   continue;

  while (func && func->name) {
   if (func->num == fnum)
    return 1;
   func++;
  }

  break;
 }

 return 0;
}
