
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {TYPE_1__* interface; } ;
struct urb {int transfer_buffer; } ;
struct sierra_port_private {int num_in_urbs; int ** in_urbs; int active; int lock; int outstanding_urbs; int delayed; } ;
struct sierra_intf_private {scalar_t__ open_ports; int susp_lock; } ;
struct TYPE_3__ {scalar_t__ needs_remote_wakeup; } ;


 int kfree (int ) ;
 int sierra_release_urb (int *) ;
 int sierra_stop_rx_urbs (struct usb_serial_port*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_autopm_get_interface_no_resume (TYPE_1__*) ;
 int usb_autopm_put_interface_async (TYPE_1__*) ;
 int usb_free_urb (struct urb*) ;
 struct urb* usb_get_from_anchor (int *) ;
 struct sierra_intf_private* usb_get_serial_data (struct usb_serial*) ;
 struct sierra_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void sierra_close(struct usb_serial_port *port)
{
 int i;
 struct usb_serial *serial = port->serial;
 struct sierra_port_private *portdata;
 struct sierra_intf_private *intfdata = usb_get_serial_data(serial);
 struct urb *urb;

 portdata = usb_get_serial_port_data(port);





 spin_lock_irq(&intfdata->susp_lock);
 if (--intfdata->open_ports == 0)
  serial->interface->needs_remote_wakeup = 0;
 spin_unlock_irq(&intfdata->susp_lock);

 for (;;) {
  urb = usb_get_from_anchor(&portdata->delayed);
  if (!urb)
   break;
  kfree(urb->transfer_buffer);
  usb_free_urb(urb);
  usb_autopm_put_interface_async(serial->interface);
  spin_lock_irq(&portdata->lock);
  portdata->outstanding_urbs--;
  spin_unlock_irq(&portdata->lock);
 }

 sierra_stop_rx_urbs(port);
 usb_kill_anchored_urbs(&portdata->active);

 for (i = 0; i < portdata->num_in_urbs; i++) {
  sierra_release_urb(portdata->in_urbs[i]);
  portdata->in_urbs[i] = ((void*)0);
 }

 usb_autopm_get_interface_no_resume(serial->interface);
}
