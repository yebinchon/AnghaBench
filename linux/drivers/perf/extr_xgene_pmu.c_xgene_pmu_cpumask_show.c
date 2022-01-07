
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_pmu_dev {TYPE_1__* parent; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int cpu; } ;


 int cpumap_print_to_pagebuf (int,char*,int *) ;
 int dev_get_drvdata (struct device*) ;
 struct xgene_pmu_dev* to_pmu_dev (int ) ;

__attribute__((used)) static ssize_t xgene_pmu_cpumask_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct xgene_pmu_dev *pmu_dev = to_pmu_dev(dev_get_drvdata(dev));

 return cpumap_print_to_pagebuf(1, buf, &pmu_dev->parent->cpu);
}
