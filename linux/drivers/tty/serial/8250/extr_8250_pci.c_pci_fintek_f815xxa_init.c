
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int device; } ;


 int EINVAL ;
 int ENODEV ;
 int IORESOURCE_MEM ;
 int pci_resource_flags (struct pci_dev*,int ) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;

__attribute__((used)) static int pci_fintek_f815xxa_init(struct pci_dev *dev)
{
 u32 max_port, i;
 int config_base;

 if (!(pci_resource_flags(dev, 0) & IORESOURCE_MEM))
  return -ENODEV;

 switch (dev->device) {
 case 0x1204:
 case 0x1208:
  max_port = dev->device & 0xff;
  break;
 case 0x1212:
  max_port = 12;
  break;
 default:
  return -EINVAL;
 }


 pci_write_config_byte(dev, 0x209, 0x40);

 for (i = 0; i < max_port; ++i) {

  config_base = 0x2A0 + 0x08 * i;


  pci_write_config_byte(dev, config_base + 0x01, 0x33);


  pci_write_config_byte(dev, config_base + 0, 0x01);
 }

 return max_port;
}
