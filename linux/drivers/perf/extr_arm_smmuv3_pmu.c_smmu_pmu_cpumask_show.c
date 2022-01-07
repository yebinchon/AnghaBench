
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smmu_pmu {int on_cpu; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int cpumap_print_to_pagebuf (int,char*,int ) ;
 int cpumask_of (int ) ;
 int dev_get_drvdata (struct device*) ;
 struct smmu_pmu* to_smmu_pmu (int ) ;

__attribute__((used)) static ssize_t smmu_pmu_cpumask_show(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct smmu_pmu *smmu_pmu = to_smmu_pmu(dev_get_drvdata(dev));

 return cpumap_print_to_pagebuf(1, buf, cpumask_of(smmu_pmu->on_cpu));
}
