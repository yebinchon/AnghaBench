
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int* bus_info; } ;


 int PCI_DEVFN (int,int) ;
 TYPE_1__* isst_cpu_info ;
 int nr_cpu_ids ;
 int num_possible_cpus () ;
 struct pci_dev* pci_get_domain_bus_and_slot (int ,int,int ) ;

struct pci_dev *isst_if_get_pci_dev(int cpu, int bus_no, int dev, int fn)
{
 int bus_number;

 if (bus_no < 0 || bus_no > 1 || cpu < 0 || cpu >= nr_cpu_ids ||
     cpu >= num_possible_cpus())
  return ((void*)0);

 bus_number = isst_cpu_info[cpu].bus_info[bus_no];
 if (bus_number < 0)
  return ((void*)0);

 return pci_get_domain_bus_and_slot(0, bus_number, PCI_DEVFN(dev, fn));
}
