
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmt_pinctrl_data {void* ngroups; void* groups; void* npins; void* pins; void* nbanks; void* banks; } ;
struct platform_device {int dev; } ;


 void* ARRAY_SIZE (void*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct wmt_pinctrl_data* devm_kzalloc (int *,int,int ) ;
 void* wm8650_banks ;
 void* wm8650_groups ;
 void* wm8650_pins ;
 int wmt_pinctrl_probe (struct platform_device*,struct wmt_pinctrl_data*) ;

__attribute__((used)) static int wm8650_pinctrl_probe(struct platform_device *pdev)
{
 struct wmt_pinctrl_data *data;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->banks = wm8650_banks;
 data->nbanks = ARRAY_SIZE(wm8650_banks);
 data->pins = wm8650_pins;
 data->npins = ARRAY_SIZE(wm8650_pins);
 data->groups = wm8650_groups;
 data->ngroups = ARRAY_SIZE(wm8650_groups);

 return wmt_pinctrl_probe(pdev, data);
}
