
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_7__* parent; int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct max77620_pctrl_info {int pctl; TYPE_1__* fps_config; void* num_pin_groups; void* pin_groups; void* num_functions; void* functions; void* num_pins; void* pins; int rmap; TYPE_3__* dev; } ;
struct max77620_chip {int rmap; } ;
struct TYPE_12__ {int of_node; } ;
struct TYPE_10__ {void* custom_params; void* num_custom_params; void* npins; void* pins; int name; } ;
struct TYPE_9__ {int active_fps_src; int active_power_up_slots; int active_power_down_slots; int suspend_fps_src; int suspend_power_up_slots; int suspend_power_down_slots; } ;


 void* ARRAY_SIZE (void*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX77620_PIN_NUM ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_3__*,char*) ;
 struct max77620_chip* dev_get_drvdata (TYPE_7__*) ;
 int dev_name (TYPE_3__*) ;
 struct max77620_pctrl_info* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_pinctrl_register (TYPE_3__*,TYPE_2__*,struct max77620_pctrl_info*) ;
 void* max77620_cfg_params ;
 void* max77620_pin_function ;
 TYPE_2__ max77620_pinctrl_desc ;
 void* max77620_pingroups ;
 void* max77620_pins_desc ;
 int platform_set_drvdata (struct platform_device*,struct max77620_pctrl_info*) ;

__attribute__((used)) static int max77620_pinctrl_probe(struct platform_device *pdev)
{
 struct max77620_chip *max77620 = dev_get_drvdata(pdev->dev.parent);
 struct max77620_pctrl_info *mpci;
 int i;

 mpci = devm_kzalloc(&pdev->dev, sizeof(*mpci), GFP_KERNEL);
 if (!mpci)
  return -ENOMEM;

 mpci->dev = &pdev->dev;
 mpci->dev->of_node = pdev->dev.parent->of_node;
 mpci->rmap = max77620->rmap;

 mpci->pins = max77620_pins_desc;
 mpci->num_pins = ARRAY_SIZE(max77620_pins_desc);
 mpci->functions = max77620_pin_function;
 mpci->num_functions = ARRAY_SIZE(max77620_pin_function);
 mpci->pin_groups = max77620_pingroups;
 mpci->num_pin_groups = ARRAY_SIZE(max77620_pingroups);
 platform_set_drvdata(pdev, mpci);

 max77620_pinctrl_desc.name = dev_name(&pdev->dev);
 max77620_pinctrl_desc.pins = max77620_pins_desc;
 max77620_pinctrl_desc.npins = ARRAY_SIZE(max77620_pins_desc);
 max77620_pinctrl_desc.num_custom_params =
    ARRAY_SIZE(max77620_cfg_params);
 max77620_pinctrl_desc.custom_params = max77620_cfg_params;

 for (i = 0; i < MAX77620_PIN_NUM; ++i) {
  mpci->fps_config[i].active_fps_src = -1;
  mpci->fps_config[i].active_power_up_slots = -1;
  mpci->fps_config[i].active_power_down_slots = -1;
  mpci->fps_config[i].suspend_fps_src = -1;
  mpci->fps_config[i].suspend_power_up_slots = -1;
  mpci->fps_config[i].suspend_power_down_slots = -1;
 }

 mpci->pctl = devm_pinctrl_register(&pdev->dev, &max77620_pinctrl_desc,
        mpci);
 if (IS_ERR(mpci->pctl)) {
  dev_err(&pdev->dev, "Couldn't register pinctrl driver\n");
  return PTR_ERR(mpci->pctl);
 }

 return 0;
}
