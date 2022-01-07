
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int revision; } ;


 int PCI_DEVICE_ID_VIA_8231 ;
 int PCI_DEVICE_ID_VIA_82C686 ;
 int PCI_VENDOR_ID_VIA ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,int *) ;
 int pci_info (struct pci_dev*,char*) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static void quirk_vialatency(struct pci_dev *dev)
{
 struct pci_dev *p;
 u8 busarb;





 p = pci_get_device(PCI_VENDOR_ID_VIA, PCI_DEVICE_ID_VIA_82C686, ((void*)0));
 if (p != ((void*)0)) {






  if (p->revision < 0x40 || p->revision > 0x42)
   goto exit;
 } else {
  p = pci_get_device(PCI_VENDOR_ID_VIA, PCI_DEVICE_ID_VIA_8231, ((void*)0));
  if (p == ((void*)0))
   goto exit;


  if (p->revision < 0x10 || p->revision > 0x12)
   goto exit;
 }
 pci_read_config_byte(dev, 0x76, &busarb);





 busarb &= ~(1<<5);
 busarb |= (1<<4);
 pci_write_config_byte(dev, 0x76, busarb);
 pci_info(dev, "Applying VIA southbridge workaround\n");
exit:
 pci_dev_put(p);
}
