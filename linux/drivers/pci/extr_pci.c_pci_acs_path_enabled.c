
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;


 int pci_acs_enabled (struct pci_dev*,int ) ;
 scalar_t__ pci_is_root_bus (TYPE_1__*) ;

bool pci_acs_path_enabled(struct pci_dev *start,
     struct pci_dev *end, u16 acs_flags)
{
 struct pci_dev *pdev, *parent = start;

 do {
  pdev = parent;

  if (!pci_acs_enabled(pdev, acs_flags))
   return 0;

  if (pci_is_root_bus(pdev->bus))
   return (end == ((void*)0));

  parent = pdev->bus->self;
 } while (pdev != end);

 return 1;
}
