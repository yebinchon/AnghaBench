
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int asus_hides_smbus ;
 int * asus_rcba_base ;
 int iounmap (int *) ;
 scalar_t__ likely (int) ;
 int pci_info (struct pci_dev*,char*) ;

__attribute__((used)) static void asus_hides_smbus_lpc_ich6_resume(struct pci_dev *dev)
{
 if (likely(!asus_hides_smbus || !asus_rcba_base))
  return;

 iounmap(asus_rcba_base);
 asus_rcba_base = ((void*)0);
 pci_info(dev, "Enabled ICH6/i801 SMBus device\n");
}
