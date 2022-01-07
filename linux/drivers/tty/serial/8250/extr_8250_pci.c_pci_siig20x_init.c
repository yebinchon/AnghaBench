
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int device; } ;


 int PCI_DEVICE_ID_SIIG_2S1P_20x ;
 int PCI_DEVICE_ID_SIIG_2S_20x ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static int pci_siig20x_init(struct pci_dev *dev)
{
 u8 data;


 pci_read_config_byte(dev, 0x6f, &data);
 pci_write_config_byte(dev, 0x6f, data & 0xef);


 if (((dev->device & 0xfffc) == PCI_DEVICE_ID_SIIG_2S_20x) ||
     ((dev->device & 0xfffc) == PCI_DEVICE_ID_SIIG_2S1P_20x)) {
  pci_read_config_byte(dev, 0x73, &data);
  pci_write_config_byte(dev, 0x73, data & 0xef);
 }
 return 0;
}
