
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sunxi_pinctrl {TYPE_1__* desc; } ;
struct TYPE_4__ {scalar_t__ const number; } ;
struct sunxi_desc_pin {struct sunxi_desc_function* functions; TYPE_2__ pin; } ;
struct sunxi_desc_function {scalar_t__ name; } ;
struct TYPE_3__ {int npins; struct sunxi_desc_pin* pins; } ;


 int strcmp (scalar_t__,char const*) ;

__attribute__((used)) static struct sunxi_desc_function *
sunxi_pinctrl_desc_find_function_by_pin(struct sunxi_pinctrl *pctl,
     const u16 pin_num,
     const char *func_name)
{
 int i;

 for (i = 0; i < pctl->desc->npins; i++) {
  const struct sunxi_desc_pin *pin = pctl->desc->pins + i;

  if (pin->pin.number == pin_num) {
   struct sunxi_desc_function *func = pin->functions;

   while (func->name) {
    if (!strcmp(func->name, func_name))
     return func;

    func++;
   }
  }
 }

 return ((void*)0);
}
