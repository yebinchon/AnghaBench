
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int cpu; } ;
struct arm_ccn {TYPE_1__ dt; } ;
typedef int ssize_t ;


 int cpumap_print_to_pagebuf (int,char*,int ) ;
 int cpumask_of (int ) ;
 int dev_get_drvdata (struct device*) ;
 struct arm_ccn* pmu_to_arm_ccn (int ) ;

__attribute__((used)) static ssize_t arm_ccn_pmu_cpumask_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct arm_ccn *ccn = pmu_to_arm_ccn(dev_get_drvdata(dev));

 return cpumap_print_to_pagebuf(1, buf, cpumask_of(ccn->dt.cpu));
}
