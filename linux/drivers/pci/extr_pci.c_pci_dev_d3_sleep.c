
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {unsigned int d3_delay; } ;


 int msleep (unsigned int) ;
 unsigned int pci_pm_d3_delay ;

__attribute__((used)) static void pci_dev_d3_sleep(struct pci_dev *dev)
{
 unsigned int delay = dev->d3_delay;

 if (delay < pci_pm_d3_delay)
  delay = pci_pm_d3_delay;

 if (delay)
  msleep(delay);
}
