
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct imx_pinctrl_soc_info {int dummy; } ;


 int ENODEV ;
 int imx_pinctrl_probe (struct platform_device*,struct imx_pinctrl_soc_info const*) ;
 struct imx_pinctrl_soc_info* of_device_get_match_data (int *) ;

__attribute__((used)) static int imx7d_pinctrl_probe(struct platform_device *pdev)
{
 const struct imx_pinctrl_soc_info *pinctrl_info;

 pinctrl_info = of_device_get_match_data(&pdev->dev);
 if (!pinctrl_info)
  return -ENODEV;

 return imx_pinctrl_probe(pdev, pinctrl_info);
}
