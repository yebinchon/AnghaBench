
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int hpwdt_dev ;
 int hpwdt_exit_nmi_decoding () ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_mem_addr ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static void hpwdt_exit(struct pci_dev *dev)
{
 watchdog_unregister_device(&hpwdt_dev);
 hpwdt_exit_nmi_decoding();
 pci_iounmap(dev, pci_mem_addr);
 pci_disable_device(dev);
}
