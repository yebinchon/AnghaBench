
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int asus_hides_smbus_lpc_ich6_resume (struct pci_dev*) ;
 int asus_hides_smbus_lpc_ich6_resume_early (struct pci_dev*) ;
 int asus_hides_smbus_lpc_ich6_suspend (struct pci_dev*) ;

__attribute__((used)) static void asus_hides_smbus_lpc_ich6(struct pci_dev *dev)
{
 asus_hides_smbus_lpc_ich6_suspend(dev);
 asus_hides_smbus_lpc_ich6_resume_early(dev);
 asus_hides_smbus_lpc_ich6_resume(dev);
}
