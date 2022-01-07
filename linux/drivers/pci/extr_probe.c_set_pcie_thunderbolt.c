
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {scalar_t__ vendor; int is_thunderbolt; } ;


 int PCI_EXT_CAP_ID_VNDR ;
 scalar_t__ PCI_VENDOR_ID_INTEL ;
 scalar_t__ PCI_VNDR_HEADER ;
 scalar_t__ PCI_VNDR_HEADER_ID (int ) ;
 scalar_t__ PCI_VSEC_ID_INTEL_TBT ;
 int pci_find_next_ext_capability (struct pci_dev*,int,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int *) ;

__attribute__((used)) static void set_pcie_thunderbolt(struct pci_dev *dev)
{
 int vsec = 0;
 u32 header;

 while ((vsec = pci_find_next_ext_capability(dev, vsec,
          PCI_EXT_CAP_ID_VNDR))) {
  pci_read_config_dword(dev, vsec + PCI_VNDR_HEADER, &header);


  if (dev->vendor == PCI_VENDOR_ID_INTEL &&
      PCI_VNDR_HEADER_ID(header) == PCI_VSEC_ID_INTEL_TBT) {
   dev->is_thunderbolt = 1;
   return;
  }
 }
}
