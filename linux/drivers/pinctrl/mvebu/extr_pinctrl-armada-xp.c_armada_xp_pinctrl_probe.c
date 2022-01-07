
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {struct mvebu_pinctrl_soc_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct mvebu_pinctrl_soc_info {unsigned int variant; int nmodes; void* ngpioranges; TYPE_2__* gpioranges; void* modes; void* ncontrols; TYPE_2__* controls; } ;
struct TYPE_13__ {int npins; } ;


 void* ARRAY_SIZE (TYPE_2__*) ;
 int DIV_ROUND_UP (int ,int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MVEBU_MPPS_PER_REG ;






 void* armada_xp_mpp_modes ;
 struct mvebu_pinctrl_soc_info armada_xp_pinctrl_info ;
 int armada_xp_pinctrl_of_match ;
 int devm_kmalloc_array (TYPE_1__*,int,int,int ) ;
 int mpp_saved_regs ;
 TYPE_2__* mv78230_mpp_controls ;
 TYPE_2__* mv78230_mpp_gpio_ranges ;
 TYPE_2__* mv78260_mpp_controls ;
 TYPE_2__* mv78260_mpp_gpio_ranges ;
 TYPE_2__* mv78460_mpp_controls ;
 TYPE_2__* mv78460_mpp_gpio_ranges ;
 TYPE_2__* mv98dx3236_mpp_controls ;
 TYPE_2__* mv98dx3236_mpp_gpio_ranges ;
 void* mv98dx3236_mpp_modes ;
 int mvebu_pinctrl_simple_mmio_probe (struct platform_device*) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;

__attribute__((used)) static int armada_xp_pinctrl_probe(struct platform_device *pdev)
{
 struct mvebu_pinctrl_soc_info *soc = &armada_xp_pinctrl_info;
 const struct of_device_id *match =
  of_match_device(armada_xp_pinctrl_of_match, &pdev->dev);
 int nregs;

 if (!match)
  return -ENODEV;

 soc->variant = (unsigned) match->data & 0xff;

 switch (soc->variant) {
 case 130:
  soc->controls = mv78230_mpp_controls;
  soc->ncontrols = ARRAY_SIZE(mv78230_mpp_controls);
  soc->modes = armada_xp_mpp_modes;



  soc->nmodes = mv78230_mpp_controls[0].npins;
  soc->gpioranges = mv78230_mpp_gpio_ranges;
  soc->ngpioranges = ARRAY_SIZE(mv78230_mpp_gpio_ranges);
  break;
 case 129:
  soc->controls = mv78260_mpp_controls;
  soc->ncontrols = ARRAY_SIZE(mv78260_mpp_controls);
  soc->modes = armada_xp_mpp_modes;



  soc->nmodes = mv78260_mpp_controls[0].npins;
  soc->gpioranges = mv78260_mpp_gpio_ranges;
  soc->ngpioranges = ARRAY_SIZE(mv78260_mpp_gpio_ranges);
  break;
 case 128:
  soc->controls = mv78460_mpp_controls;
  soc->ncontrols = ARRAY_SIZE(mv78460_mpp_controls);
  soc->modes = armada_xp_mpp_modes;



  soc->nmodes = mv78460_mpp_controls[0].npins;
  soc->gpioranges = mv78460_mpp_gpio_ranges;
  soc->ngpioranges = ARRAY_SIZE(mv78460_mpp_gpio_ranges);
  break;
 case 133:
 case 132:
 case 131:

  soc->controls = mv98dx3236_mpp_controls;
  soc->ncontrols = ARRAY_SIZE(mv98dx3236_mpp_controls);
  soc->modes = mv98dx3236_mpp_modes;
  soc->nmodes = mv98dx3236_mpp_controls[0].npins;
  soc->gpioranges = mv98dx3236_mpp_gpio_ranges;
  soc->ngpioranges = ARRAY_SIZE(mv98dx3236_mpp_gpio_ranges);
  break;
 }

 nregs = DIV_ROUND_UP(soc->nmodes, MVEBU_MPPS_PER_REG);

 mpp_saved_regs = devm_kmalloc_array(&pdev->dev, nregs, sizeof(u32),
         GFP_KERNEL);
 if (!mpp_saved_regs)
  return -ENOMEM;

 pdev->dev.platform_data = soc;

 return mvebu_pinctrl_simple_mmio_probe(pdev);
}
