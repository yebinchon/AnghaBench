
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_pinctrl {int pkg; int npins; TYPE_1__* match_data; } ;
struct stm32_desc_pin {int pkg; int functions; int pin; } ;
struct TYPE_2__ {int npins; struct stm32_desc_pin* pins; } ;



__attribute__((used)) static int stm32_pctrl_create_pins_tab(struct stm32_pinctrl *pctl,
           struct stm32_desc_pin *pins)
{
 const struct stm32_desc_pin *p;
 int i, nb_pins_available = 0;

 for (i = 0; i < pctl->match_data->npins; i++) {
  p = pctl->match_data->pins + i;
  if (pctl->pkg && !(pctl->pkg & p->pkg))
   continue;
  pins->pin = p->pin;
  pins->functions = p->functions;
  pins++;
  nb_pins_available++;
 }

 pctl->npins = nb_pins_available;

 return 0;
}
