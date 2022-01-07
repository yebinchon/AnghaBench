
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_wwan_port_private {struct usb_wwan_port_private** in_buffer; struct urb** in_urbs; struct usb_wwan_port_private** out_buffer; struct urb** out_urbs; int delayed; } ;
typedef struct usb_wwan_port_private u8 ;
struct usb_serial_port {int bulk_out_endpointAddress; int bulk_in_endpointAddress; int bulk_out_size; int bulk_in_size; } ;
struct urb {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IN_BUFLEN ;
 int N_IN_URB ;
 int N_OUT_URB ;
 int OUT_BUFLEN ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 scalar_t__ __get_free_page (int ) ;
 int free_page (unsigned long) ;
 int init_usb_anchor (int *) ;
 int kfree (struct usb_wwan_port_private*) ;
 struct usb_wwan_port_private* kmalloc (int ,int ) ;
 struct usb_wwan_port_private* kzalloc (int,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct usb_wwan_port_private*) ;
 int usb_wwan_indat_callback ;
 int usb_wwan_outdat_callback ;
 struct urb* usb_wwan_setup_urb (struct usb_serial_port*,int ,int ,struct usb_serial_port*,struct usb_wwan_port_private*,int ,int ) ;

int usb_wwan_port_probe(struct usb_serial_port *port)
{
 struct usb_wwan_port_private *portdata;
 struct urb *urb;
 u8 *buffer;
 int i;

 if (!port->bulk_in_size || !port->bulk_out_size)
  return -ENODEV;

 portdata = kzalloc(sizeof(*portdata), GFP_KERNEL);
 if (!portdata)
  return -ENOMEM;

 init_usb_anchor(&portdata->delayed);

 for (i = 0; i < N_IN_URB; i++) {
  buffer = (u8 *)__get_free_page(GFP_KERNEL);
  if (!buffer)
   goto bail_out_error;
  portdata->in_buffer[i] = buffer;

  urb = usb_wwan_setup_urb(port, port->bulk_in_endpointAddress,
      USB_DIR_IN, port,
      buffer, IN_BUFLEN,
      usb_wwan_indat_callback);
  portdata->in_urbs[i] = urb;
 }

 for (i = 0; i < N_OUT_URB; i++) {
  buffer = kmalloc(OUT_BUFLEN, GFP_KERNEL);
  if (!buffer)
   goto bail_out_error2;
  portdata->out_buffer[i] = buffer;

  urb = usb_wwan_setup_urb(port, port->bulk_out_endpointAddress,
      USB_DIR_OUT, port,
      buffer, OUT_BUFLEN,
      usb_wwan_outdat_callback);
  portdata->out_urbs[i] = urb;
 }

 usb_set_serial_port_data(port, portdata);

 return 0;

bail_out_error2:
 for (i = 0; i < N_OUT_URB; i++) {
  usb_free_urb(portdata->out_urbs[i]);
  kfree(portdata->out_buffer[i]);
 }
bail_out_error:
 for (i = 0; i < N_IN_URB; i++) {
  usb_free_urb(portdata->in_urbs[i]);
  free_page((unsigned long)portdata->in_buffer[i]);
 }
 kfree(portdata);

 return -ENOMEM;
}
