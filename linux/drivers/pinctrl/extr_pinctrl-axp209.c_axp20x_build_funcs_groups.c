
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct axp20x_pctl {TYPE_1__* desc; TYPE_2__* funcs; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {char* name; int ngroups; int * groups; int muxval; } ;
struct TYPE_4__ {int npins; TYPE_3__* pins; int adc_mask; int ldo_mask; int adc_mux; } ;


 size_t AXP20X_FUNC_ADC ;
 size_t AXP20X_FUNC_GPIO_IN ;
 size_t AXP20X_FUNC_GPIO_OUT ;
 size_t AXP20X_FUNC_LDO ;
 int AXP20X_MUX_GPIO_IN ;
 int AXP20X_MUX_GPIO_OUT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int axp20x_funcs_groups_from_mask (int *,int ,int,TYPE_2__*,TYPE_3__*) ;
 int * devm_kcalloc (int *,int,int,int ) ;
 struct axp20x_pctl* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int axp20x_build_funcs_groups(struct platform_device *pdev)
{
 struct axp20x_pctl *pctl = platform_get_drvdata(pdev);
 int i, ret, pin, npins = pctl->desc->npins;

 pctl->funcs[AXP20X_FUNC_GPIO_OUT].name = "gpio_out";
 pctl->funcs[AXP20X_FUNC_GPIO_OUT].muxval = AXP20X_MUX_GPIO_OUT;
 pctl->funcs[AXP20X_FUNC_GPIO_IN].name = "gpio_in";
 pctl->funcs[AXP20X_FUNC_GPIO_IN].muxval = AXP20X_MUX_GPIO_IN;
 pctl->funcs[AXP20X_FUNC_LDO].name = "ldo";




 pctl->funcs[AXP20X_FUNC_ADC].name = "adc";
 pctl->funcs[AXP20X_FUNC_ADC].muxval = pctl->desc->adc_mux;


 for (i = 0; i <= AXP20X_FUNC_GPIO_IN; i++) {
  pctl->funcs[i].ngroups = npins;
  pctl->funcs[i].groups = devm_kcalloc(&pdev->dev,
           npins, sizeof(char *),
           GFP_KERNEL);
  if (!pctl->funcs[i].groups)
   return -ENOMEM;
  for (pin = 0; pin < npins; pin++)
   pctl->funcs[i].groups[pin] = pctl->desc->pins[pin].name;
 }

 ret = axp20x_funcs_groups_from_mask(&pdev->dev, pctl->desc->ldo_mask,
          npins, &pctl->funcs[AXP20X_FUNC_LDO],
          pctl->desc->pins);
 if (ret)
  return ret;

 ret = axp20x_funcs_groups_from_mask(&pdev->dev, pctl->desc->adc_mask,
          npins, &pctl->funcs[AXP20X_FUNC_ADC],
          pctl->desc->pins);
 if (ret)
  return ret;

 return 0;
}
