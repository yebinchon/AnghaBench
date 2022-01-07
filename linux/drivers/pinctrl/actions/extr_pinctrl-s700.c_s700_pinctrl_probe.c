
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int owl_pinctrl_probe (struct platform_device*,int *) ;
 int s700_pinctrl_data ;

__attribute__((used)) static int s700_pinctrl_probe(struct platform_device *pdev)
{
 return owl_pinctrl_probe(pdev, &s700_pinctrl_data);
}
