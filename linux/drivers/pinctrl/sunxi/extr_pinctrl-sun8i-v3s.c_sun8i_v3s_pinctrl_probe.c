
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 scalar_t__ of_device_get_match_data (int *) ;
 int sun8i_v3s_pinctrl_data ;
 int sunxi_pinctrl_init_with_variant (struct platform_device*,int *,unsigned long) ;

__attribute__((used)) static int sun8i_v3s_pinctrl_probe(struct platform_device *pdev)
{
 unsigned long variant = (unsigned long)of_device_get_match_data(&pdev->dev);

 return sunxi_pinctrl_init_with_variant(pdev, &sun8i_v3s_pinctrl_data,
            variant);
}
