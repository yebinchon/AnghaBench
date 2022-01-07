
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int ICH6_ACPI_EN ;
 int ICH6_GPIOBASE ;
 int ICH6_GPIO_CNTL ;
 int ICH6_GPIO_EN ;
 int ICH_ACPI_CNTL ;
 int ICH_PMBASE ;
 scalar_t__ PCI_BRIDGE_RESOURCES ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int quirk_io_region (struct pci_dev*,int ,int,scalar_t__,char*) ;

__attribute__((used)) static void ich6_lpc_acpi_gpio(struct pci_dev *dev)
{
 u8 enable;

 pci_read_config_byte(dev, ICH_ACPI_CNTL, &enable);
 if (enable & ICH6_ACPI_EN)
  quirk_io_region(dev, ICH_PMBASE, 128, PCI_BRIDGE_RESOURCES,
     "ICH6 ACPI/GPIO/TCO");

 pci_read_config_byte(dev, ICH6_GPIO_CNTL, &enable);
 if (enable & ICH6_GPIO_EN)
  quirk_io_region(dev, ICH6_GPIOBASE, 64, PCI_BRIDGE_RESOURCES+1,
    "ICH6 GPIO");
}
