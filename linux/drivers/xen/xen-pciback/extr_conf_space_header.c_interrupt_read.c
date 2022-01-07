
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_dev {scalar_t__ irq; } ;



__attribute__((used)) static int interrupt_read(struct pci_dev *dev, int offset, u8 * value,
     void *data)
{
 *value = (u8) dev->irq;

 return 0;
}
