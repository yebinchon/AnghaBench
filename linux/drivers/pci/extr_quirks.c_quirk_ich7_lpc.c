
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ich6_lpc_acpi_gpio (struct pci_dev*) ;
 int ich7_lpc_generic_decode (struct pci_dev*,int,char*) ;

__attribute__((used)) static void quirk_ich7_lpc(struct pci_dev *dev)
{

 ich6_lpc_acpi_gpio(dev);


 ich7_lpc_generic_decode(dev, 0x84, "ICH7 LPC Generic IO decode 1");
 ich7_lpc_generic_decode(dev, 0x88, "ICH7 LPC Generic IO decode 2");
 ich7_lpc_generic_decode(dev, 0x8c, "ICH7 LPC Generic IO decode 3");
 ich7_lpc_generic_decode(dev, 0x90, "ICH7 LPC Generic IO decode 4");
}
