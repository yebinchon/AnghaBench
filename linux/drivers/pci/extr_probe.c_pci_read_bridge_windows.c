
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct pci_dev {int io_window; scalar_t__ vendor; int device; int pref_window; int pref_64_window; } ;


 int PCI_IO_BASE ;
 int PCI_PREF_BASE_UPPER32 ;
 int PCI_PREF_MEMORY_BASE ;
 int PCI_PREF_RANGE_TYPE_64 ;
 int PCI_PREF_RANGE_TYPE_MASK ;
 scalar_t__ PCI_VENDOR_ID_DEC ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_read_config_word (struct pci_dev*,int ,scalar_t__*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

__attribute__((used)) static void pci_read_bridge_windows(struct pci_dev *bridge)
{
 u16 io;
 u32 pmem, tmp;

 pci_read_config_word(bridge, PCI_IO_BASE, &io);
 if (!io) {
  pci_write_config_word(bridge, PCI_IO_BASE, 0xe0f0);
  pci_read_config_word(bridge, PCI_IO_BASE, &io);
  pci_write_config_word(bridge, PCI_IO_BASE, 0x0);
 }
 if (io)
  bridge->io_window = 1;






 if (bridge->vendor == PCI_VENDOR_ID_DEC && bridge->device == 0x0001)
  return;

 pci_read_config_dword(bridge, PCI_PREF_MEMORY_BASE, &pmem);
 if (!pmem) {
  pci_write_config_dword(bridge, PCI_PREF_MEMORY_BASE,
            0xffe0fff0);
  pci_read_config_dword(bridge, PCI_PREF_MEMORY_BASE, &pmem);
  pci_write_config_dword(bridge, PCI_PREF_MEMORY_BASE, 0x0);
 }
 if (!pmem)
  return;

 bridge->pref_window = 1;

 if ((pmem & PCI_PREF_RANGE_TYPE_MASK) == PCI_PREF_RANGE_TYPE_64) {






  pci_read_config_dword(bridge, PCI_PREF_BASE_UPPER32, &pmem);
  pci_write_config_dword(bridge, PCI_PREF_BASE_UPPER32,
           0xffffffff);
  pci_read_config_dword(bridge, PCI_PREF_BASE_UPPER32, &tmp);
  pci_write_config_dword(bridge, PCI_PREF_BASE_UPPER32, pmem);
  if (tmp)
   bridge->pref_64_window = 1;
 }
}
