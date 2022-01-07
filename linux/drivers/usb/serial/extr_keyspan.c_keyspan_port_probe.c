
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int port_number; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct keyspan_serial_private {struct keyspan_device_details* device_details; } ;
struct keyspan_port_private {struct keyspan_port_private** in_buffer; struct keyspan_port_private** out_buffer; struct keyspan_port_private* inack_buffer; struct keyspan_port_private* outcont_buffer; void* outcont_urb; void* inack_urb; void** out_urbs; void** in_urbs; struct keyspan_device_details const* device_details; } ;
struct keyspan_device_details {size_t msg_format; int* indat_endpoints; int indat_endp_flip; int* outdat_endpoints; int outdat_endp_flip; int* inack_endpoints; int* outcont_endpoints; } ;
struct callbacks {int outcont_callback; int inack_callback; int outdat_callback; int indat_callback; } ;


 int ARRAY_SIZE (struct keyspan_port_private**) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INACK_BUFLEN ;
 int IN_BUFLEN ;
 int OUTCONT_BUFLEN ;
 int OUT_BUFLEN ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 struct callbacks* keyspan_callbacks ;
 void* keyspan_setup_urb (struct usb_serial*,int,int ,struct usb_serial_port*,struct keyspan_port_private*,int,int ) ;
 int kfree (struct keyspan_port_private*) ;
 void* kzalloc (int,int ) ;
 struct keyspan_serial_private* usb_get_serial_data (struct usb_serial*) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct keyspan_port_private*) ;

__attribute__((used)) static int keyspan_port_probe(struct usb_serial_port *port)
{
 struct usb_serial *serial = port->serial;
 struct keyspan_serial_private *s_priv;
 struct keyspan_port_private *p_priv;
 const struct keyspan_device_details *d_details;
 struct callbacks *cback;
 int endp;
 int port_num;
 int i;

 s_priv = usb_get_serial_data(serial);
 d_details = s_priv->device_details;

 p_priv = kzalloc(sizeof(*p_priv), GFP_KERNEL);
 if (!p_priv)
  return -ENOMEM;

 for (i = 0; i < ARRAY_SIZE(p_priv->in_buffer); ++i) {
  p_priv->in_buffer[i] = kzalloc(IN_BUFLEN, GFP_KERNEL);
  if (!p_priv->in_buffer[i])
   goto err_in_buffer;
 }

 for (i = 0; i < ARRAY_SIZE(p_priv->out_buffer); ++i) {
  p_priv->out_buffer[i] = kzalloc(OUT_BUFLEN, GFP_KERNEL);
  if (!p_priv->out_buffer[i])
   goto err_out_buffer;
 }

 p_priv->inack_buffer = kzalloc(INACK_BUFLEN, GFP_KERNEL);
 if (!p_priv->inack_buffer)
  goto err_inack_buffer;

 p_priv->outcont_buffer = kzalloc(OUTCONT_BUFLEN, GFP_KERNEL);
 if (!p_priv->outcont_buffer)
  goto err_outcont_buffer;

 p_priv->device_details = d_details;


 cback = &keyspan_callbacks[d_details->msg_format];

 port_num = port->port_number;


 endp = d_details->indat_endpoints[port_num];
 for (i = 0; i <= d_details->indat_endp_flip; ++i, ++endp) {
  p_priv->in_urbs[i] = keyspan_setup_urb(serial, endp,
      USB_DIR_IN, port,
      p_priv->in_buffer[i],
      IN_BUFLEN,
      cback->indat_callback);
 }

 endp = d_details->outdat_endpoints[port_num];
 for (i = 0; i <= d_details->outdat_endp_flip; ++i, ++endp) {
  p_priv->out_urbs[i] = keyspan_setup_urb(serial, endp,
      USB_DIR_OUT, port,
      p_priv->out_buffer[i],
      OUT_BUFLEN,
      cback->outdat_callback);
 }

 p_priv->inack_urb = keyspan_setup_urb(serial,
     d_details->inack_endpoints[port_num],
     USB_DIR_IN, port,
     p_priv->inack_buffer,
     INACK_BUFLEN,
     cback->inack_callback);

 p_priv->outcont_urb = keyspan_setup_urb(serial,
     d_details->outcont_endpoints[port_num],
     USB_DIR_OUT, port,
     p_priv->outcont_buffer,
     OUTCONT_BUFLEN,
      cback->outcont_callback);

 usb_set_serial_port_data(port, p_priv);

 return 0;

err_outcont_buffer:
 kfree(p_priv->inack_buffer);
err_inack_buffer:
 for (i = 0; i < ARRAY_SIZE(p_priv->out_buffer); ++i)
  kfree(p_priv->out_buffer[i]);
err_out_buffer:
 for (i = 0; i < ARRAY_SIZE(p_priv->in_buffer); ++i)
  kfree(p_priv->in_buffer[i]);
err_in_buffer:
 kfree(p_priv);

 return -ENOMEM;
}
