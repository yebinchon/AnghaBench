
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ich6_lpc_acpi_gpio (struct pci_dev*) ;
 int ich6_lpc_generic_decode (struct pci_dev*,int,char*,int) ;

__attribute__((used)) static void quirk_ich6_lpc(struct pci_dev *dev)
{

 ich6_lpc_acpi_gpio(dev);


 ich6_lpc_generic_decode(dev, 0x84, "LPC Generic IO decode 1", 0);
 ich6_lpc_generic_decode(dev, 0x88, "LPC Generic IO decode 2", 1);
}
