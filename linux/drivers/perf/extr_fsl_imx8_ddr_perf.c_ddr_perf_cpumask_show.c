
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ddr_pmu {int cpu; } ;
typedef int ssize_t ;


 int cpumap_print_to_pagebuf (int,char*,int ) ;
 int cpumask_of (int ) ;
 struct ddr_pmu* dev_get_drvdata (struct device*) ;

__attribute__((used)) static ssize_t ddr_perf_cpumask_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct ddr_pmu *pmu = dev_get_drvdata(dev);

 return cpumap_print_to_pagebuf(1, buf, cpumask_of(pmu->cpu));
}
