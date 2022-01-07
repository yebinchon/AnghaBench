
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sym_device {int chip; struct pci_dev* pdev; } ;
struct sym_chip {int dummy; } ;
struct pci_dev {int dev; int revision; int device; } ;
struct TYPE_2__ {unsigned long* excludes; } ;


 int ENODEV ;
 int dev_info (int *,char*) ;
 int memcpy (int *,struct sym_chip*,int) ;
 unsigned long pci_resource_start (struct pci_dev*,int ) ;
 TYPE_1__ sym_driver_setup ;
 struct sym_chip* sym_lookup_chip_table (int ,int ) ;

__attribute__((used)) static int sym_check_supported(struct sym_device *device)
{
 struct sym_chip *chip;
 struct pci_dev *pdev = device->pdev;
 unsigned long io_port = pci_resource_start(pdev, 0);
 int i;





 if (io_port) {
  for (i = 0 ; i < 8 ; i++) {
   if (sym_driver_setup.excludes[i] == io_port)
    return -ENODEV;
  }
 }






 chip = sym_lookup_chip_table(pdev->device, pdev->revision);
 if (!chip) {
  dev_info(&pdev->dev, "device not supported\n");
  return -ENODEV;
 }
 memcpy(&device->chip, chip, sizeof(device->chip));

 return 0;
}
