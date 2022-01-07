
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_pinctrl {int dev; TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ reserved_gpios; } ;


 scalar_t__ device_property_count_u16 (int ,char*) ;

__attribute__((used)) static bool msm_gpio_needs_valid_mask(struct msm_pinctrl *pctrl)
{
 if (pctrl->soc->reserved_gpios)
  return 1;

 return device_property_count_u16(pctrl->dev, "gpios") > 0;
}
