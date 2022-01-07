
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parent; struct mvebu_pinctrl_soc_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int dummy; } ;
struct mvebu_pinctrl_soc_info {int nmodes; int modes; void* ngpioranges; TYPE_2__* gpioranges; void* ncontrols; TYPE_2__* controls; scalar_t__ variant; } ;
struct TYPE_6__ {int npins; } ;


 void* ARRAY_SIZE (TYPE_2__*) ;
 int ENODEV ;
 TYPE_2__* armada_ap806_mpp_controls ;
 TYPE_2__* armada_ap806_mpp_gpio_ranges ;
 int armada_ap806_mpp_modes ;
 struct mvebu_pinctrl_soc_info armada_ap806_pinctrl_info ;
 int armada_ap806_pinctrl_of_match ;
 int mvebu_pinctrl_simple_regmap_probe (struct platform_device*,int ,int ) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;

__attribute__((used)) static int armada_ap806_pinctrl_probe(struct platform_device *pdev)
{
 struct mvebu_pinctrl_soc_info *soc = &armada_ap806_pinctrl_info;
 const struct of_device_id *match =
  of_match_device(armada_ap806_pinctrl_of_match, &pdev->dev);

 if (!match || !pdev->dev.parent)
  return -ENODEV;

 soc->variant = 0;
 soc->controls = armada_ap806_mpp_controls;
 soc->ncontrols = ARRAY_SIZE(armada_ap806_mpp_controls);
 soc->gpioranges = armada_ap806_mpp_gpio_ranges;
 soc->ngpioranges = ARRAY_SIZE(armada_ap806_mpp_gpio_ranges);
 soc->modes = armada_ap806_mpp_modes;
 soc->nmodes = armada_ap806_mpp_controls[0].npins;

 pdev->dev.platform_data = soc;

 return mvebu_pinctrl_simple_regmap_probe(pdev, pdev->dev.parent, 0);
}
