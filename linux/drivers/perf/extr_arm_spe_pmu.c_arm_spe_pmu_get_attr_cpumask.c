
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct arm_spe_pmu {int supported_cpus; } ;
typedef int ssize_t ;


 int cpumap_print_to_pagebuf (int,char*,int *) ;
 struct arm_spe_pmu* dev_get_drvdata (struct device*) ;

__attribute__((used)) static ssize_t arm_spe_pmu_get_attr_cpumask(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct arm_spe_pmu *spe_pmu = dev_get_drvdata(dev);

 return cpumap_print_to_pagebuf(1, buf, &spe_pmu->supported_cpus);
}
