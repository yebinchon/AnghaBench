
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int pm_message_t ;



__attribute__((used)) static int cyberpro_pci_suspend(struct pci_dev *dev, pm_message_t state)
{
 return 0;
}
