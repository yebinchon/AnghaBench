
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct mvebu_pinctrl_soc_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct mvebu_pinctrl_soc_info {unsigned int variant; int nmodes; int modes; void* ngpioranges; TYPE_2__* gpioranges; void* ncontrols; TYPE_2__* controls; } ;
struct TYPE_6__ {int npins; } ;


 void* ARRAY_SIZE (TYPE_2__*) ;
 int ENODEV ;
 TYPE_2__* armada_39x_mpp_controls ;
 TYPE_2__* armada_39x_mpp_gpio_ranges ;
 int armada_39x_mpp_modes ;
 struct mvebu_pinctrl_soc_info armada_39x_pinctrl_info ;
 int armada_39x_pinctrl_of_match ;
 int mvebu_pinctrl_simple_mmio_probe (struct platform_device*) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;

__attribute__((used)) static int armada_39x_pinctrl_probe(struct platform_device *pdev)
{
 struct mvebu_pinctrl_soc_info *soc = &armada_39x_pinctrl_info;
 const struct of_device_id *match =
  of_match_device(armada_39x_pinctrl_of_match, &pdev->dev);

 if (!match)
  return -ENODEV;

 soc->variant = (unsigned) match->data & 0xff;
 soc->controls = armada_39x_mpp_controls;
 soc->ncontrols = ARRAY_SIZE(armada_39x_mpp_controls);
 soc->gpioranges = armada_39x_mpp_gpio_ranges;
 soc->ngpioranges = ARRAY_SIZE(armada_39x_mpp_gpio_ranges);
 soc->modes = armada_39x_mpp_modes;
 soc->nmodes = armada_39x_mpp_controls[0].npins;

 pdev->dev.platform_data = soc;

 return mvebu_pinctrl_simple_mmio_probe(pdev);
}
