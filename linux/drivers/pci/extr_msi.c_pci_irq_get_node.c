
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct cpumask {int dummy; } ;


 int cpu_to_node (int ) ;
 int cpumask_first (struct cpumask const*) ;
 int dev_to_node (int *) ;
 int local_memory_node (int ) ;
 struct cpumask* pci_irq_get_affinity (struct pci_dev*,int) ;

int pci_irq_get_node(struct pci_dev *pdev, int vec)
{
 const struct cpumask *mask;

 mask = pci_irq_get_affinity(pdev, vec);
 if (mask)
  return local_memory_node(cpu_to_node(cpumask_first(mask)));
 return dev_to_node(&pdev->dev);
}
