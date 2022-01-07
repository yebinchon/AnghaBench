
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {TYPE_2__* physfn; scalar_t__ is_virtfn; } ;
struct TYPE_4__ {TYPE_1__* sriov; } ;
struct TYPE_3__ {int subsystem_device; int subsystem_vendor; } ;


 int PCI_SUBSYSTEM_ID ;
 int PCI_SUBSYSTEM_VENDOR_ID ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;

__attribute__((used)) static void pci_subsystem_ids(struct pci_dev *dev, u16 *vendor, u16 *device)
{







 pci_read_config_word(dev, PCI_SUBSYSTEM_VENDOR_ID, vendor);
 pci_read_config_word(dev, PCI_SUBSYSTEM_ID, device);
}
