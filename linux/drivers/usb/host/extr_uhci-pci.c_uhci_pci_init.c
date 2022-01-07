
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {scalar_t__ rsrc_start; } ;
struct uhci_hcd {unsigned long io_addr; int oc_low; int wait_for_hp; int global_suspend_mode_is_broken; int resume_detect_interrupts_are_broken; int configure_hc; int check_and_reset_hc; int reset_hc; int rh_numports; } ;
struct TYPE_2__ {scalar_t__ vendor; } ;


 scalar_t__ PCI_VENDOR_ID_HP ;
 scalar_t__ PCI_VENDOR_ID_INTEL ;
 scalar_t__ PCI_VENDOR_ID_VIA ;
 int check_and_reset_hc (struct uhci_hcd*) ;
 int device_set_wakeup_capable (int ,int) ;
 struct uhci_hcd* hcd_to_uhci (struct usb_hcd*) ;
 TYPE_1__* to_pci_dev (int ) ;
 int uhci_count_ports (struct usb_hcd*) ;
 int uhci_dev (struct uhci_hcd*) ;
 int uhci_pci_check_and_reset_hc ;
 int uhci_pci_configure_hc ;
 int uhci_pci_global_suspend_mode_is_broken ;
 int uhci_pci_reset_hc ;
 int uhci_pci_resume_detect_interrupts_are_broken ;

__attribute__((used)) static int uhci_pci_init(struct usb_hcd *hcd)
{
 struct uhci_hcd *uhci = hcd_to_uhci(hcd);

 uhci->io_addr = (unsigned long) hcd->rsrc_start;

 uhci->rh_numports = uhci_count_ports(hcd);





 if (to_pci_dev(uhci_dev(uhci))->vendor == PCI_VENDOR_ID_VIA)
  uhci->oc_low = 1;


 if (to_pci_dev(uhci_dev(uhci))->vendor == PCI_VENDOR_ID_HP)
  uhci->wait_for_hp = 1;


 if (to_pci_dev(uhci_dev(uhci))->vendor == PCI_VENDOR_ID_INTEL)
  device_set_wakeup_capable(uhci_dev(uhci), 1);


 uhci->reset_hc = uhci_pci_reset_hc;
 uhci->check_and_reset_hc = uhci_pci_check_and_reset_hc;
 uhci->configure_hc = uhci_pci_configure_hc;
 uhci->resume_detect_interrupts_are_broken =
  uhci_pci_resume_detect_interrupts_are_broken;
 uhci->global_suspend_mode_is_broken =
  uhci_pci_global_suspend_mode_is_broken;





 check_and_reset_hc(uhci);
 return 0;
}
