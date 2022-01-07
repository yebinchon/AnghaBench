
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cpumask {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int bus; } ;


 struct cpumask* cpu_online_mask ;
 int cpumap_print_to_pagebuf (int,char*,struct cpumask const*) ;
 struct cpumask* cpumask_of_node (int) ;
 struct cpumask* cpumask_of_pcibus (int ) ;
 int dev_to_node (struct device*) ;
 TYPE_1__* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t pci_dev_show_local_cpu(struct device *dev, bool list,
          struct device_attribute *attr, char *buf)
{
 const struct cpumask *mask;





 mask = cpumask_of_pcibus(to_pci_dev(dev)->bus);

 return cpumap_print_to_pagebuf(list, buf, mask);
}
