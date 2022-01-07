
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_register (int *) ;
 int sprd_pinctrl_driver ;

__attribute__((used)) static int sprd_pinctrl_init(void)
{
 return platform_driver_register(&sprd_pinctrl_driver);
}
