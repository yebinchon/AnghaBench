
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int zx296718_pinctrl_info ;
 int zx_pinctrl_init (struct platform_device*,int *) ;

__attribute__((used)) static int zx296718_pinctrl_probe(struct platform_device *pdev)
{
 return zx_pinctrl_init(pdev, &zx296718_pinctrl_info);
}
