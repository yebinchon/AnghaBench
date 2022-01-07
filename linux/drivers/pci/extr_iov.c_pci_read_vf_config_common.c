
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* sriov; struct pci_dev* physfn; } ;
struct TYPE_2__ {int subsystem_device; int subsystem_vendor; int hdr_type; int class; } ;


 int PCI_CLASS_REVISION ;
 int PCI_HEADER_TYPE ;
 int PCI_SUBSYSTEM_ID ;
 int PCI_SUBSYSTEM_VENDOR_ID ;
 int pci_read_config_byte (struct pci_dev*,int ,int *) ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;

__attribute__((used)) static void pci_read_vf_config_common(struct pci_dev *virtfn)
{
 struct pci_dev *physfn = virtfn->physfn;
 pci_read_config_dword(virtfn, PCI_CLASS_REVISION,
         &physfn->sriov->class);
 pci_read_config_byte(virtfn, PCI_HEADER_TYPE,
        &physfn->sriov->hdr_type);
 pci_read_config_word(virtfn, PCI_SUBSYSTEM_VENDOR_ID,
        &physfn->sriov->subsystem_vendor);
 pci_read_config_word(virtfn, PCI_SUBSYSTEM_ID,
        &physfn->sriov->subsystem_device);
}
