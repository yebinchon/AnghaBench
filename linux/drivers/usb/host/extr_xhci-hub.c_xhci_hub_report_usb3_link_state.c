
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_hcd {int quirks; } ;


 int PORT_CAS ;
 int PORT_PLS_MASK ;
 int USB_PORT_STAT_CONNECTION ;
 int USB_SS_PORT_LS_COMP_MOD ;
 int USB_SS_PORT_LS_SS_INACTIVE ;
 int USB_SS_PORT_LS_U3 ;
 int XDEV_RESUME ;
 int XHCI_COMP_MODE_QUIRK ;

__attribute__((used)) static void xhci_hub_report_usb3_link_state(struct xhci_hcd *xhci,
  u32 *status, u32 status_reg)
{
 u32 pls = status_reg & PORT_PLS_MASK;





 if (pls == XDEV_RESUME) {
  *status |= USB_SS_PORT_LS_U3;
  return;
 }




 if (status_reg & PORT_CAS) {







  if (pls != USB_SS_PORT_LS_COMP_MOD &&
      pls != USB_SS_PORT_LS_SS_INACTIVE) {
   pls = USB_SS_PORT_LS_COMP_MOD;
  }




  pls |= USB_PORT_STAT_CONNECTION;
 } else {
  if ((xhci->quirks & XHCI_COMP_MODE_QUIRK) &&
    (pls == USB_SS_PORT_LS_COMP_MOD))
   pls |= USB_PORT_STAT_CONNECTION;
 }


 *status |= pls;
}
