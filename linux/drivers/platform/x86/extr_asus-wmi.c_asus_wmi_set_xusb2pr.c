
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct asus_wmi {TYPE_2__* driver; } ;
struct TYPE_4__ {TYPE_1__* quirks; } ;
struct TYPE_3__ {int xusb2pr; } ;


 int PCI_DEVICE_ID_INTEL_LYNXPOINT_LP_XHCI ;
 int PCI_VENDOR_ID_INTEL ;
 int USB_INTEL_XUSB2PR ;
 int cpu_to_le32 (int ) ;
 struct pci_dev* pci_get_device (int ,int ,int *) ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;
 int pr_info (char*,int ,int ) ;

__attribute__((used)) static void asus_wmi_set_xusb2pr(struct asus_wmi *asus)
{
 struct pci_dev *xhci_pdev;
 u32 orig_ports_available;
 u32 ports_available = asus->driver->quirks->xusb2pr;

 xhci_pdev = pci_get_device(PCI_VENDOR_ID_INTEL,
   PCI_DEVICE_ID_INTEL_LYNXPOINT_LP_XHCI,
   ((void*)0));

 if (!xhci_pdev)
  return;

 pci_read_config_dword(xhci_pdev, USB_INTEL_XUSB2PR,
    &orig_ports_available);

 pci_write_config_dword(xhci_pdev, USB_INTEL_XUSB2PR,
    cpu_to_le32(ports_available));

 pr_info("set USB_INTEL_XUSB2PR old: 0x%04x, new: 0x%04x\n",
   orig_ports_available, ports_available);
}
