
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ci_hdrc_imx_remove (struct platform_device*) ;

__attribute__((used)) static void ci_hdrc_imx_shutdown(struct platform_device *pdev)
{
 ci_hdrc_imx_remove(pdev);
}
