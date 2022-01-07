
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {TYPE_2__* physfn; scalar_t__ is_virtfn; } ;
struct TYPE_4__ {TYPE_1__* sriov; } ;
struct TYPE_3__ {int class; } ;


 int PCI_CLASS_REVISION ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;

__attribute__((used)) static u32 pci_class(struct pci_dev *dev)
{
 u32 class;





 pci_read_config_dword(dev, PCI_CLASS_REVISION, &class);
 return class;
}
