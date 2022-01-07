
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int sprd_pinctrl_core_probe (struct platform_device*,int ,int ) ;
 int sprd_sc9860_pins_info ;

__attribute__((used)) static int sprd_pinctrl_probe(struct platform_device *pdev)
{
 return sprd_pinctrl_core_probe(pdev, sprd_sc9860_pins_info,
           ARRAY_SIZE(sprd_sc9860_pins_info));
}
