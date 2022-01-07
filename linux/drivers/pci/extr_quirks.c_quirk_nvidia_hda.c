
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {scalar_t__ device; int multifunction; } ;


 int BIT (int) ;
 scalar_t__ PCI_DEVICE_ID_NVIDIA_GEFORCE_320M ;
 int PCI_HEADER_TYPE ;
 int pci_info (struct pci_dev*,char*) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static void quirk_nvidia_hda(struct pci_dev *gpu)
{
 u8 hdr_type;
 u32 val;


 if (gpu->device < PCI_DEVICE_ID_NVIDIA_GEFORCE_320M)
  return;


 pci_read_config_dword(gpu, 0x488, &val);
 if (val & BIT(25))
  return;

 pci_info(gpu, "Enabling HDA controller\n");
 pci_write_config_dword(gpu, 0x488, val | BIT(25));


 pci_read_config_byte(gpu, PCI_HEADER_TYPE, &hdr_type);
 gpu->multifunction = !!(hdr_type & 0x80);
}
