
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int quirks; } ;


 int XHCI_LINK_TRB_QUIRK ;

__attribute__((used)) static inline int xhci_link_trb_quirk(struct xhci_hcd *xhci)
{
 return xhci->quirks & XHCI_LINK_TRB_QUIRK;
}
