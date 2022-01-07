
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_pmu {int on_cpu; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct hisi_pmu* to_hisi_pmu (int ) ;

ssize_t hisi_cpumask_sysfs_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct hisi_pmu *hisi_pmu = to_hisi_pmu(dev_get_drvdata(dev));

 return sprintf(buf, "%d\n", hisi_pmu->on_cpu);
}
