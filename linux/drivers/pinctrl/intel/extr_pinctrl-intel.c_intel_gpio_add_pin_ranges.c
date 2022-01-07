
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pinctrl {int dev; int chip; } ;
struct intel_padgroup {scalar_t__ gpio_base; int size; int base; } ;
struct intel_community {int ngpps; struct intel_padgroup* gpps; } ;


 int dev_name (int ) ;
 int gpiochip_add_pin_range (int *,int ,scalar_t__,int ,int ) ;

__attribute__((used)) static int intel_gpio_add_pin_ranges(struct intel_pinctrl *pctrl,
         const struct intel_community *community)
{
 int ret = 0, i;

 for (i = 0; i < community->ngpps; i++) {
  const struct intel_padgroup *gpp = &community->gpps[i];

  if (gpp->gpio_base < 0)
   continue;

  ret = gpiochip_add_pin_range(&pctrl->chip, dev_name(pctrl->dev),
          gpp->gpio_base, gpp->base,
          gpp->size);
  if (ret)
   return ret;
 }

 return ret;
}
