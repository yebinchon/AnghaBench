
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct xhci_port {size_t hcd_portnum; int addr; TYPE_1__* rhub; } ;
struct xhci_hcd {int lock; } ;
struct xhci_bus_state {unsigned long* resume_done; int port_c_suspend; int suspended_ports; int rexit_ports; int * rexit_done; int resuming_ports; } ;
struct TYPE_5__ {int busnum; } ;
struct usb_hcd {TYPE_2__ self; int rh_timer; } ;
struct TYPE_4__ {struct xhci_bus_state bus_state; struct usb_hcd* hcd; } ;


 int EINVAL ;
 int ENODEV ;
 size_t PORT_PE ;
 int PORT_PLC ;
 size_t PORT_RESET ;
 size_t USB_PORT_STAT_SUSPEND ;
 int USB_RESUME_TIMEOUT ;
 int XDEV_U0 ;
 int XHCI_MAX_REXIT_TIMEOUT_MS ;
 int clear_bit (size_t,int *) ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 unsigned long jiffies ;
 int mod_timer (int *,unsigned long) ;
 unsigned long msecs_to_jiffies (int ) ;
 int readl (int ) ;
 int set_bit (size_t,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (size_t,int *) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 int usb_hcd_end_port_resume (TYPE_2__*,size_t) ;
 int usb_hcd_start_port_resume (TYPE_2__*,size_t) ;
 int wait_for_completion_timeout (int *,unsigned long) ;
 int xhci_dbg (struct xhci_hcd*,char*,...) ;
 int xhci_find_slot_id_by_port (struct usb_hcd*,struct xhci_hcd*,size_t) ;
 int xhci_ring_device (struct xhci_hcd*,int) ;
 int xhci_set_link_state (struct xhci_hcd*,struct xhci_port*,int ) ;
 int xhci_test_and_clear_bit (struct xhci_hcd*,struct xhci_port*,int ) ;
 int xhci_warn (struct xhci_hcd*,char*,int ,size_t,int) ;

__attribute__((used)) static int xhci_handle_usb2_port_link_resume(struct xhci_port *port,
          u32 *status, u32 portsc,
          unsigned long flags)
{
 struct xhci_bus_state *bus_state;
 struct xhci_hcd *xhci;
 struct usb_hcd *hcd;
 int slot_id;
 u32 wIndex;

 hcd = port->rhub->hcd;
 bus_state = &port->rhub->bus_state;
 xhci = hcd_to_xhci(hcd);
 wIndex = port->hcd_portnum;

 if ((portsc & PORT_RESET) || !(portsc & PORT_PE)) {
  *status = 0xffffffff;
  return -EINVAL;
 }

 if (!bus_state->resume_done[wIndex]) {

  if (test_bit(wIndex, &bus_state->resuming_ports)) {






  } else {



   unsigned long timeout = jiffies +
    msecs_to_jiffies(USB_RESUME_TIMEOUT);

   set_bit(wIndex, &bus_state->resuming_ports);
   bus_state->resume_done[wIndex] = timeout;
   mod_timer(&hcd->rh_timer, timeout);
   usb_hcd_start_port_resume(&hcd->self, wIndex);
  }

 } else if (time_after_eq(jiffies, bus_state->resume_done[wIndex])) {
  int time_left;

  xhci_dbg(xhci, "resume USB2 port %d-%d\n",
    hcd->self.busnum, wIndex + 1);

  bus_state->resume_done[wIndex] = 0;
  clear_bit(wIndex, &bus_state->resuming_ports);

  set_bit(wIndex, &bus_state->rexit_ports);

  xhci_test_and_clear_bit(xhci, port, PORT_PLC);
  xhci_set_link_state(xhci, port, XDEV_U0);

  spin_unlock_irqrestore(&xhci->lock, flags);
  time_left = wait_for_completion_timeout(
   &bus_state->rexit_done[wIndex],
   msecs_to_jiffies(XHCI_MAX_REXIT_TIMEOUT_MS));
  spin_lock_irqsave(&xhci->lock, flags);

  if (time_left) {
   slot_id = xhci_find_slot_id_by_port(hcd, xhci,
           wIndex + 1);
   if (!slot_id) {
    xhci_dbg(xhci, "slot_id is zero\n");
    *status = 0xffffffff;
    return -ENODEV;
   }
   xhci_ring_device(xhci, slot_id);
  } else {
   int port_status = readl(port->addr);

   xhci_warn(xhci, "Port resume timed out, port %d-%d: 0x%x\n",
      hcd->self.busnum, wIndex + 1, port_status);
   *status |= USB_PORT_STAT_SUSPEND;
   clear_bit(wIndex, &bus_state->rexit_ports);
  }

  usb_hcd_end_port_resume(&hcd->self, wIndex);
  bus_state->port_c_suspend |= 1 << wIndex;
  bus_state->suspended_ports &= ~(1 << wIndex);
 } else {






  *status |= USB_PORT_STAT_SUSPEND;
 }
 return 0;
}
