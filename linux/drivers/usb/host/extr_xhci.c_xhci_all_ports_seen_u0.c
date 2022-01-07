
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_ports; } ;
struct xhci_hcd {int port_status_u0; TYPE_1__ usb3_rhub; } ;



__attribute__((used)) static int xhci_all_ports_seen_u0(struct xhci_hcd *xhci)
{
 return (xhci->port_status_u0 == ((1 << xhci->usb3_rhub.num_ports) - 1));
}
