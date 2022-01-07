
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int sun50i_a64_r_pinctrl_data ;
 int sunxi_pinctrl_init (struct platform_device*,int *) ;

__attribute__((used)) static int sun50i_a64_r_pinctrl_probe(struct platform_device *pdev)
{
 return sunxi_pinctrl_init(pdev,
      &sun50i_a64_r_pinctrl_data);
}
