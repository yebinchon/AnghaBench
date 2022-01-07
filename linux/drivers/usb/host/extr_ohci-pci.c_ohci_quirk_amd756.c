
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct ohci_hcd {int flags; } ;


 int OHCI_QUIRK_AMD756 ;
 int broken_suspend (struct usb_hcd*) ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_dbg (struct ohci_hcd*,char*) ;

__attribute__((used)) static int ohci_quirk_amd756(struct usb_hcd *hcd)
{
 struct ohci_hcd *ohci = hcd_to_ohci (hcd);

 ohci->flags = OHCI_QUIRK_AMD756;
 ohci_dbg (ohci, "AMD756 erratum 4 workaround\n");


 return broken_suspend(hcd);
}
