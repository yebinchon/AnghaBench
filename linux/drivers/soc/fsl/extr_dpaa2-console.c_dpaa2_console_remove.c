
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int dpaa2_aiop_console_dev ;
 int dpaa2_mc_console_dev ;
 int misc_deregister (int *) ;

__attribute__((used)) static int dpaa2_console_remove(struct platform_device *pdev)
{
 misc_deregister(&dpaa2_mc_console_dev);
 misc_deregister(&dpaa2_aiop_console_dev);

 return 0;
}
