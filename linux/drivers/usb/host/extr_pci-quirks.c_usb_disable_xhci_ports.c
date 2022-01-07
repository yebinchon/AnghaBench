
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int USB_INTEL_USB3_PSSEN ;
 int USB_INTEL_XUSB2PR ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;

void usb_disable_xhci_ports(struct pci_dev *xhci_pdev)
{
 pci_write_config_dword(xhci_pdev, USB_INTEL_USB3_PSSEN, 0x0);
 pci_write_config_dword(xhci_pdev, USB_INTEL_XUSB2PR, 0x0);
}
