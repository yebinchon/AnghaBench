
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int ICH4_ACPI_EN ;
 int ICH4_GPIOBASE ;
 int ICH4_GPIO_CNTL ;
 int ICH4_GPIO_EN ;
 int ICH_ACPI_CNTL ;
 int ICH_PMBASE ;
 scalar_t__ PCI_BRIDGE_RESOURCES ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int quirk_io_region (struct pci_dev*,int ,int,scalar_t__,char*) ;

__attribute__((used)) static void quirk_ich4_lpc_acpi(struct pci_dev *dev)
{
 u8 enable;
 pci_read_config_byte(dev, ICH_ACPI_CNTL, &enable);
 if (enable & ICH4_ACPI_EN)
  quirk_io_region(dev, ICH_PMBASE, 128, PCI_BRIDGE_RESOURCES,
     "ICH4 ACPI/GPIO/TCO");

 pci_read_config_byte(dev, ICH4_GPIO_CNTL, &enable);
 if (enable & ICH4_GPIO_EN)
  quirk_io_region(dev, ICH4_GPIOBASE, 64, PCI_BRIDGE_RESOURCES+1,
    "ICH4 GPIO");
}
