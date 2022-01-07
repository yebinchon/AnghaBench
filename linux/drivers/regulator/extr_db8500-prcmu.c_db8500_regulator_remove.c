
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ux500_regulator_debug_exit () ;

__attribute__((used)) static int db8500_regulator_remove(struct platform_device *pdev)
{
 ux500_regulator_debug_exit();

 return 0;
}
