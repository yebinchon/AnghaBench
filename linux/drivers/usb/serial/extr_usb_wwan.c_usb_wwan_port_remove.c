
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_wwan_port_private {struct usb_wwan_port_private** out_buffer; int * out_urbs; scalar_t__* in_buffer; int * in_urbs; } ;
struct usb_serial_port {int dummy; } ;


 int N_IN_URB ;
 int N_OUT_URB ;
 int free_page (unsigned long) ;
 int kfree (struct usb_wwan_port_private*) ;
 int usb_free_urb (int ) ;
 struct usb_wwan_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_set_serial_port_data (struct usb_serial_port*,int *) ;

int usb_wwan_port_remove(struct usb_serial_port *port)
{
 int i;
 struct usb_wwan_port_private *portdata;

 portdata = usb_get_serial_port_data(port);
 usb_set_serial_port_data(port, ((void*)0));

 for (i = 0; i < N_IN_URB; i++) {
  usb_free_urb(portdata->in_urbs[i]);
  free_page((unsigned long)portdata->in_buffer[i]);
 }
 for (i = 0; i < N_OUT_URB; i++) {
  usb_free_urb(portdata->out_urbs[i]);
  kfree(portdata->out_buffer[i]);
 }

 kfree(portdata);

 return 0;
}
