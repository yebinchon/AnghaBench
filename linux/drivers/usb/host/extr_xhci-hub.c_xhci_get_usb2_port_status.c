
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xhci_port {int hcd_portnum; TYPE_1__* rhub; } ;
struct xhci_bus_state {int suspended_ports; int port_c_suspend; int resuming_ports; scalar_t__* resume_done; } ;
struct TYPE_2__ {struct xhci_bus_state bus_state; } ;


 int PORT_PLS_MASK ;
 int PORT_POWER ;
 int USB_PORT_STAT_L1 ;
 int USB_PORT_STAT_POWER ;
 int USB_PORT_STAT_SUSPEND ;
 int XDEV_RESUME ;
 int XDEV_U0 ;
 int XDEV_U2 ;
 int XDEV_U3 ;
 int clear_bit (int,int *) ;
 int xhci_handle_usb2_port_link_resume (struct xhci_port*,int*,int,unsigned long) ;

__attribute__((used)) static void xhci_get_usb2_port_status(struct xhci_port *port, u32 *status,
          u32 portsc, unsigned long flags)
{
 struct xhci_bus_state *bus_state;
 u32 link_state;
 u32 portnum;
 int ret;

 bus_state = &port->rhub->bus_state;
 link_state = portsc & PORT_PLS_MASK;
 portnum = port->hcd_portnum;


 if (portsc & PORT_POWER) {
  *status |= USB_PORT_STAT_POWER;


  if (link_state == XDEV_U3)
   *status |= USB_PORT_STAT_SUSPEND;
  if (link_state == XDEV_U2)
   *status |= USB_PORT_STAT_L1;
  if (link_state == XDEV_U0) {
   bus_state->resume_done[portnum] = 0;
   clear_bit(portnum, &bus_state->resuming_ports);
   if (bus_state->suspended_ports & (1 << portnum)) {
    bus_state->suspended_ports &= ~(1 << portnum);
    bus_state->port_c_suspend |= 1 << portnum;
   }
  }
  if (link_state == XDEV_RESUME) {
   ret = xhci_handle_usb2_port_link_resume(port, status,
        portsc, flags);
   if (ret)
    return;
  }
 }
}
