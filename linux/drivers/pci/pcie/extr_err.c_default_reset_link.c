
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int pci_ers_result_t ;


 int KERN_DEBUG ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 int pci_bus_error_reset (struct pci_dev*) ;
 int pci_printk (int ,struct pci_dev*,char*) ;

__attribute__((used)) static pci_ers_result_t default_reset_link(struct pci_dev *dev)
{
 int rc;

 rc = pci_bus_error_reset(dev);
 pci_printk(KERN_DEBUG, dev, "downstream link has been reset\n");
 return rc ? PCI_ERS_RESULT_DISCONNECT : PCI_ERS_RESULT_RECOVERED;
}
