
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int msleep (int) ;

__attribute__((used)) static int pci_xircom_init(struct pci_dev *dev)
{
 msleep(100);
 return 0;
}
