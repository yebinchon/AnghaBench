
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pinctrl {int ncommunities; struct intel_community* communities; } ;
struct intel_community {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int intel_gpio_community_irq_handler (struct intel_pinctrl*,struct intel_community const*) ;

__attribute__((used)) static irqreturn_t intel_gpio_irq(int irq, void *data)
{
 const struct intel_community *community;
 struct intel_pinctrl *pctrl = data;
 irqreturn_t ret = IRQ_NONE;
 int i;


 for (i = 0; i < pctrl->ncommunities; i++) {
  community = &pctrl->communities[i];
  ret |= intel_gpio_community_irq_handler(pctrl, community);
 }

 return ret;
}
