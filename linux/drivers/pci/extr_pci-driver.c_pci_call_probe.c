
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int is_probed; int dev; } ;
struct drv_dev_and_id {struct pci_device_id const* member_2; struct pci_dev* member_1; struct pci_driver* member_0; } ;


 int MAX_NUMNODES ;
 int cpu_hotplug_disable () ;
 int cpu_hotplug_enable () ;
 int cpu_online_mask ;
 int cpumask_any_and (int ,int ) ;
 int cpumask_of_node (int) ;
 int dev_to_node (int *) ;
 int local_pci_probe (struct drv_dev_and_id*) ;
 int node_online (int) ;
 int nr_cpu_ids ;
 scalar_t__ pci_physfn_is_probed (struct pci_dev*) ;
 int work_on_cpu (int,int (*) (struct drv_dev_and_id*),struct drv_dev_and_id*) ;

__attribute__((used)) static int pci_call_probe(struct pci_driver *drv, struct pci_dev *dev,
     const struct pci_device_id *id)
{
 int error, node, cpu;
 struct drv_dev_and_id ddi = { drv, dev, id };






 node = dev_to_node(&dev->dev);
 dev->is_probed = 1;

 cpu_hotplug_disable();





 if (node < 0 || node >= MAX_NUMNODES || !node_online(node) ||
     pci_physfn_is_probed(dev))
  cpu = nr_cpu_ids;
 else
  cpu = cpumask_any_and(cpumask_of_node(node), cpu_online_mask);

 if (cpu < nr_cpu_ids)
  error = work_on_cpu(cpu, local_pci_probe, &ddi);
 else
  error = local_pci_probe(&ddi);

 dev->is_probed = 0;
 cpu_hotplug_enable();
 return error;
}
