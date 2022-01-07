
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;
struct keyspan_serial_private {int glocont_buf; void* glocont_urb; int indat_buf; void* indat_urb; int instat_buf; void* instat_urb; struct keyspan_device_details* device_details; } ;
struct keyspan_device_details {size_t msg_format; int glocont_endpoint; int indat_endpoint; int instat_endpoint; } ;
struct callbacks {int glocont_callback; int instat_callback; } ;


 int GLOCONT_BUFLEN ;
 int INDAT49W_BUFLEN ;
 int INSTAT_BUFLEN ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 struct callbacks* keyspan_callbacks ;
 void* keyspan_setup_urb (struct usb_serial*,int ,int ,struct usb_serial*,int ,int ,int ) ;
 int usa49wg_indat_callback ;
 struct keyspan_serial_private* usb_get_serial_data (struct usb_serial*) ;

__attribute__((used)) static void keyspan_setup_urbs(struct usb_serial *serial)
{
 struct keyspan_serial_private *s_priv;
 const struct keyspan_device_details *d_details;
 struct callbacks *cback;

 s_priv = usb_get_serial_data(serial);
 d_details = s_priv->device_details;


 cback = &keyspan_callbacks[d_details->msg_format];



 s_priv->instat_urb = keyspan_setup_urb
  (serial, d_details->instat_endpoint, USB_DIR_IN,
   serial, s_priv->instat_buf, INSTAT_BUFLEN,
   cback->instat_callback);

 s_priv->indat_urb = keyspan_setup_urb
  (serial, d_details->indat_endpoint, USB_DIR_IN,
   serial, s_priv->indat_buf, INDAT49W_BUFLEN,
   usa49wg_indat_callback);

 s_priv->glocont_urb = keyspan_setup_urb
  (serial, d_details->glocont_endpoint, USB_DIR_OUT,
   serial, s_priv->glocont_buf, GLOCONT_BUFLEN,
   cback->glocont_callback);
}
