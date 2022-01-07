
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_wwan_port_private {int out_busy; struct urb** out_urbs; } ;
struct usb_wwan_intf_private {int susp_lock; int in_flight; } ;
struct usb_serial_port {TYPE_1__* serial; } ;
struct urb {struct usb_serial_port* context; } ;
struct TYPE_2__ {int interface; } ;


 int N_OUT_URB ;
 int clear_bit (int,int *) ;
 int smp_mb__before_atomic () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_autopm_put_interface_async (int ) ;
 struct usb_wwan_intf_private* usb_get_serial_data (TYPE_1__*) ;
 struct usb_wwan_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_serial_port_softint (struct usb_serial_port*) ;

__attribute__((used)) static void usb_wwan_outdat_callback(struct urb *urb)
{
 struct usb_serial_port *port;
 struct usb_wwan_port_private *portdata;
 struct usb_wwan_intf_private *intfdata;
 unsigned long flags;
 int i;

 port = urb->context;
 intfdata = usb_get_serial_data(port->serial);

 usb_serial_port_softint(port);
 usb_autopm_put_interface_async(port->serial->interface);
 portdata = usb_get_serial_port_data(port);
 spin_lock_irqsave(&intfdata->susp_lock, flags);
 intfdata->in_flight--;
 spin_unlock_irqrestore(&intfdata->susp_lock, flags);

 for (i = 0; i < N_OUT_URB; ++i) {
  if (portdata->out_urbs[i] == urb) {
   smp_mb__before_atomic();
   clear_bit(i, &portdata->out_busy);
   break;
  }
 }
}
