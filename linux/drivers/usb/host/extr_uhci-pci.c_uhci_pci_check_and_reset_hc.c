
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_hcd {int io_addr; } ;


 int to_pci_dev (int ) ;
 int uhci_check_and_reset_hc (int ,int ) ;
 int uhci_dev (struct uhci_hcd*) ;

__attribute__((used)) static int uhci_pci_check_and_reset_hc(struct uhci_hcd *uhci)
{
 return uhci_check_and_reset_hc(to_pci_dev(uhci_dev(uhci)),
    uhci->io_addr);
}
