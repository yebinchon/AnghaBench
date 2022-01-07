
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u8 ;
struct pci_dev {int irq; int pin; int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 int HVM_CALLBACK_VIA_TYPE_SHIFT ;
 scalar_t__ pci_domain_nr (TYPE_1__*) ;

__attribute__((used)) static uint64_t get_callback_via(struct pci_dev *pdev)
{
 u8 pin;
 int irq;

 irq = pdev->irq;
 if (irq < 16)
  return irq;

 pin = pdev->pin;


 return ((uint64_t)0x01 << HVM_CALLBACK_VIA_TYPE_SHIFT) |
  ((uint64_t)pci_domain_nr(pdev->bus) << 32) |
  ((uint64_t)pdev->bus->number << 16) |
  ((uint64_t)(pdev->devfn & 0xff) << 8) |
  ((uint64_t)(pin - 1) & 3);
}
