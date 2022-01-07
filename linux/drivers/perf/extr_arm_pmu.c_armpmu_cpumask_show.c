
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct arm_pmu {int supported_cpus; } ;
typedef int ssize_t ;


 int cpumap_print_to_pagebuf (int,char*,int *) ;
 int dev_get_drvdata (struct device*) ;
 struct arm_pmu* to_arm_pmu (int ) ;

__attribute__((used)) static ssize_t armpmu_cpumask_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct arm_pmu *armpmu = to_arm_pmu(dev_get_drvdata(dev));
 return cpumap_print_to_pagebuf(1, buf, &armpmu->supported_cpus);
}
