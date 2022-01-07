
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int platform_get_drvdata (struct platform_device*) ;
 int proc_thermal_remove (int ) ;

__attribute__((used)) static int int3401_remove(struct platform_device *pdev)
{
 proc_thermal_remove(platform_get_drvdata(pdev));

 return 0;
}
