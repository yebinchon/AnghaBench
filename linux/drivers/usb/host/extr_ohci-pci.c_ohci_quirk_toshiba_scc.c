
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct ohci_hcd {int flags; } ;


 int ENXIO ;
 int OHCI_QUIRK_BE_MMIO ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_dbg (struct ohci_hcd*,char*) ;
 int ohci_err (struct ohci_hcd*,char*) ;

__attribute__((used)) static int ohci_quirk_toshiba_scc(struct usb_hcd *hcd)
{
 struct ohci_hcd *ohci = hcd_to_ohci (hcd);
 ohci_err (ohci, "unsupported big endian Toshiba quirk\n");
 return -ENXIO;

}
