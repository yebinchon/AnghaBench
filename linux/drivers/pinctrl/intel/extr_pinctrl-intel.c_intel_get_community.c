
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pinctrl {int ncommunities; int dev; struct intel_community* communities; } ;
struct intel_community {unsigned int pin_base; unsigned int npins; } ;


 int dev_warn (int ,char*,unsigned int) ;

__attribute__((used)) static struct intel_community *intel_get_community(struct intel_pinctrl *pctrl,
         unsigned int pin)
{
 struct intel_community *community;
 int i;

 for (i = 0; i < pctrl->ncommunities; i++) {
  community = &pctrl->communities[i];
  if (pin >= community->pin_base &&
      pin < community->pin_base + community->npins)
   return community;
 }

 dev_warn(pctrl->dev, "failed to find community for pin %u\n", pin);
 return ((void*)0);
}
