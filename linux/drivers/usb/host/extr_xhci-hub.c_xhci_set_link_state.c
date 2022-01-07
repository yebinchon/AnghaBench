
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct xhci_port {scalar_t__ hcd_portnum; TYPE_2__* rhub; int addr; } ;
struct xhci_hcd {int dummy; } ;
struct TYPE_4__ {int busnum; } ;
struct TYPE_6__ {TYPE_1__ self; } ;
struct TYPE_5__ {TYPE_3__* hcd; } ;


 int PORT_LINK_STROBE ;
 int PORT_PLS_MASK ;
 int readl (int ) ;
 int writel (int,int ) ;
 int xhci_dbg (struct xhci_hcd*,char*,int ,scalar_t__,int,int) ;
 int xhci_port_state_to_neutral (int) ;

void xhci_set_link_state(struct xhci_hcd *xhci, struct xhci_port *port,
    u32 link_state)
{
 u32 temp;
 u32 portsc;

 portsc = readl(port->addr);
 temp = xhci_port_state_to_neutral(portsc);
 temp &= ~PORT_PLS_MASK;
 temp |= PORT_LINK_STROBE | link_state;
 writel(temp, port->addr);

 xhci_dbg(xhci, "Set port %d-%d link state, portsc: 0x%x, write 0x%x",
   port->rhub->hcd->self.busnum, port->hcd_portnum + 1,
   portsc, temp);
}
