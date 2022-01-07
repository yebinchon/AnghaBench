
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_unregister (int *) ;
 int sprd_pinctrl_driver ;

__attribute__((used)) static void sprd_pinctrl_exit(void)
{
 platform_driver_unregister(&sprd_pinctrl_driver);
}
