
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int irq; } ;


 int pci_read_config_byte (struct pci_dev*,int,int*) ;

__attribute__((used)) static void quirk_via_acpi(struct pci_dev *d)
{
 u8 irq;


 pci_read_config_byte(d, 0x42, &irq);
 irq &= 0xf;
 if (irq && (irq != 2))
  d->irq = irq;
}
