
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct arm_ccn {int dummy; } ;


 int arm_ccn_pmu_cleanup (struct arm_ccn*) ;
 struct arm_ccn* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int arm_ccn_remove(struct platform_device *pdev)
{
 struct arm_ccn *ccn = platform_get_drvdata(pdev);

 arm_ccn_pmu_cleanup(ccn);

 return 0;
}
