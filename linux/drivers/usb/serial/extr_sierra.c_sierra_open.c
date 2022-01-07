
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int bulk_in_endpointAddress; struct usb_serial* serial; } ;
struct usb_serial {TYPE_1__* interface; int dev; } ;
struct urb {int dummy; } ;
struct tty_struct {int dummy; } ;
struct sierra_port_private {int num_in_urbs; struct urb** in_urbs; } ;
struct sierra_intf_private {int open_ports; int susp_lock; } ;
struct TYPE_2__ {int needs_remote_wakeup; } ;


 int GFP_KERNEL ;
 int IN_BUFLEN ;
 int USB_DIR_IN ;
 int sierra_indat_callback ;
 int sierra_release_urb (struct urb*) ;
 struct urb* sierra_setup_urb (struct usb_serial*,int,int,struct usb_serial_port*,int ,int ,int ) ;
 int sierra_stop_rx_urbs (struct usb_serial_port*) ;
 int sierra_submit_rx_urbs (struct usb_serial_port*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_autopm_put_interface (TYPE_1__*) ;
 int usb_clear_halt (int ,int) ;
 struct sierra_intf_private* usb_get_serial_data (struct usb_serial*) ;
 struct sierra_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static int sierra_open(struct tty_struct *tty, struct usb_serial_port *port)
{
 struct sierra_port_private *portdata;
 struct usb_serial *serial = port->serial;
 struct sierra_intf_private *intfdata = usb_get_serial_data(serial);
 int i;
 int err;
 int endpoint;
 struct urb *urb;

 portdata = usb_get_serial_port_data(port);

 endpoint = port->bulk_in_endpointAddress;
 for (i = 0; i < portdata->num_in_urbs; i++) {
  urb = sierra_setup_urb(serial, endpoint, USB_DIR_IN, port,
     IN_BUFLEN, GFP_KERNEL,
     sierra_indat_callback);
  portdata->in_urbs[i] = urb;
 }

 usb_clear_halt(serial->dev,
   usb_sndbulkpipe(serial->dev, endpoint) | USB_DIR_IN);

 err = sierra_submit_rx_urbs(port, GFP_KERNEL);
 if (err)
  goto err_submit;

 spin_lock_irq(&intfdata->susp_lock);
 if (++intfdata->open_ports == 1)
  serial->interface->needs_remote_wakeup = 1;
 spin_unlock_irq(&intfdata->susp_lock);
 usb_autopm_put_interface(serial->interface);

 return 0;

err_submit:
 sierra_stop_rx_urbs(port);

 for (i = 0; i < portdata->num_in_urbs; i++) {
  sierra_release_urb(portdata->in_urbs[i]);
  portdata->in_urbs[i] = ((void*)0);
 }

 return err;
}
