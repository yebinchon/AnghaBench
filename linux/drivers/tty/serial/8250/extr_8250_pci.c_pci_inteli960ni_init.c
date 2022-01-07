
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int subsystem_device; int dev; } ;


 int ENODEV ;
 int dev_dbg (int *,char*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;

__attribute__((used)) static int pci_inteli960ni_init(struct pci_dev *dev)
{
 u32 oldval;

 if (!(dev->subsystem_device & 0x1000))
  return -ENODEV;


 pci_read_config_dword(dev, 0x44, &oldval);
 if (oldval == 0x00001000L) {
  dev_dbg(&dev->dev, "Local i960 firmware missing\n");
  return -ENODEV;
 }
 return 0;
}
