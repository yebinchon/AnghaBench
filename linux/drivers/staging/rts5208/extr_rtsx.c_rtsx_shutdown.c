
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_dev {int irq; struct rtsx_chip* chip; } ;
struct rtsx_chip {scalar_t__ msi_en; } ;
struct pci_dev {int dummy; } ;


 int PM_S1 ;
 int free_irq (int,void*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 struct rtsx_dev* pci_get_drvdata (struct pci_dev*) ;
 int rtsx_do_before_power_down (struct rtsx_chip*,int ) ;

__attribute__((used)) static void rtsx_shutdown(struct pci_dev *pci)
{
 struct rtsx_dev *dev = pci_get_drvdata(pci);
 struct rtsx_chip *chip;

 if (!dev)
  return;

 chip = dev->chip;

 rtsx_do_before_power_down(chip, PM_S1);

 if (dev->irq >= 0) {
  free_irq(dev->irq, (void *)dev);
  dev->irq = -1;
 }

 if (chip->msi_en)
  pci_disable_msi(pci);

 pci_disable_device(pci);
}
