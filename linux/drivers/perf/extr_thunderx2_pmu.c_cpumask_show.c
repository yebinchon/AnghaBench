
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx2_uncore_pmu {int cpu; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int cpumap_print_to_pagebuf (int,char*,int ) ;
 int cpumask_of (int ) ;
 int dev_get_drvdata (struct device*) ;
 struct tx2_uncore_pmu* pmu_to_tx2_pmu (int ) ;

__attribute__((used)) static ssize_t cpumask_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct tx2_uncore_pmu *tx2_pmu;

 tx2_pmu = pmu_to_tx2_pmu(dev_get_drvdata(dev));
 return cpumap_print_to_pagebuf(1, buf, cpumask_of(tx2_pmu->cpu));
}
