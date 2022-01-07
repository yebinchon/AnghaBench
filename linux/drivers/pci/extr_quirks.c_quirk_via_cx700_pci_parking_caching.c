
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pci_dev {int dummy; } ;


 int PCI_DEVICE_ID_VIA_8235_USB_2 ;
 int PCI_VENDOR_ID_VIA ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 int pci_info (struct pci_dev*,char*) ;
 scalar_t__ pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void quirk_via_cx700_pci_parking_caching(struct pci_dev *dev)
{
 struct pci_dev *p = pci_get_device(PCI_VENDOR_ID_VIA,
  PCI_DEVICE_ID_VIA_8235_USB_2, ((void*)0));
 uint8_t b;





 p = pci_get_device(PCI_VENDOR_ID_VIA, PCI_DEVICE_ID_VIA_8235_USB_2, p);
 if (!p)
  return;
 pci_dev_put(p);

 if (pci_read_config_byte(dev, 0x76, &b) == 0) {
  if (b & 0x40) {

   pci_write_config_byte(dev, 0x76, b ^ 0x40);

   pci_info(dev, "Disabling VIA CX700 PCI parking\n");
  }
 }

 if (pci_read_config_byte(dev, 0x72, &b) == 0) {
  if (b != 0) {

   pci_write_config_byte(dev, 0x72, 0x0);


   pci_write_config_byte(dev, 0x75, 0x1);


   pci_write_config_byte(dev, 0x77, 0x0);

   pci_info(dev, "Disabling VIA CX700 PCI caching\n");
  }
 }
}
