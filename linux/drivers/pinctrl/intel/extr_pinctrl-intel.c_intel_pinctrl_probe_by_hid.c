
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct intel_pinctrl_soc_data {int dummy; } ;


 struct intel_pinctrl_soc_data* device_get_match_data (int *) ;
 int intel_pinctrl_probe (struct platform_device*,struct intel_pinctrl_soc_data const*) ;

int intel_pinctrl_probe_by_hid(struct platform_device *pdev)
{
 const struct intel_pinctrl_soc_data *data;

 data = device_get_match_data(&pdev->dev);
 return intel_pinctrl_probe(pdev, data);
}
