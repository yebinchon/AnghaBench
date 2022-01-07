
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l3cache_pmu {int cpumask; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int cpumap_print_to_pagebuf (int,char*,int *) ;
 int dev_get_drvdata (struct device*) ;
 struct l3cache_pmu* to_l3cache_pmu (int ) ;

__attribute__((used)) static ssize_t qcom_l3_cache_pmu_cpumask_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct l3cache_pmu *l3pmu = to_l3cache_pmu(dev_get_drvdata(dev));

 return cpumap_print_to_pagebuf(1, buf, &l3pmu->cpumask);
}
