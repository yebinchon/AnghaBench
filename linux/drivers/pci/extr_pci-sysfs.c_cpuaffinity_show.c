
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cpumask {int dummy; } ;
typedef int ssize_t ;


 int cpumap_print_to_pagebuf (int,char*,struct cpumask const*) ;
 struct cpumask* cpumask_of_pcibus (int ) ;
 int to_pci_bus (struct device*) ;

__attribute__((used)) static ssize_t cpuaffinity_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 const struct cpumask *cpumask = cpumask_of_pcibus(to_pci_bus(dev));

 return cpumap_print_to_pagebuf(0, buf, cpumask);
}
