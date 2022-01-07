
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct xhci_port {int addr; } ;
struct xhci_hcd {int dummy; } ;


 int PORT_WKCONN_E ;
 int PORT_WKDISC_E ;
 int PORT_WKOC_E ;
 int USB_PORT_FEAT_REMOTE_WAKE_CONNECT ;
 int USB_PORT_FEAT_REMOTE_WAKE_DISCONNECT ;
 int USB_PORT_FEAT_REMOTE_WAKE_OVER_CURRENT ;
 int readl (int ) ;
 int writel (int ,int ) ;
 int xhci_port_state_to_neutral (int ) ;

__attribute__((used)) static void xhci_set_remote_wake_mask(struct xhci_hcd *xhci,
          struct xhci_port *port, u16 wake_mask)
{
 u32 temp;

 temp = readl(port->addr);
 temp = xhci_port_state_to_neutral(temp);

 if (wake_mask & USB_PORT_FEAT_REMOTE_WAKE_CONNECT)
  temp |= PORT_WKCONN_E;
 else
  temp &= ~PORT_WKCONN_E;

 if (wake_mask & USB_PORT_FEAT_REMOTE_WAKE_DISCONNECT)
  temp |= PORT_WKDISC_E;
 else
  temp &= ~PORT_WKDISC_E;

 if (wake_mask & USB_PORT_FEAT_REMOTE_WAKE_OVER_CURRENT)
  temp |= PORT_WKOC_E;
 else
  temp &= ~PORT_WKOC_E;

 writel(temp, port->addr);
}
