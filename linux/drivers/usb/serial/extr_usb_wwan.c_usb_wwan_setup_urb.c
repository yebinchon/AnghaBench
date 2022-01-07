
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int dev; } ;
struct urb {int dummy; } ;


 int GFP_KERNEL ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int,char*,int,void (*) (struct urb*),void*) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static struct urb *usb_wwan_setup_urb(struct usb_serial_port *port,
          int endpoint,
          int dir, void *ctx, char *buf, int len,
          void (*callback) (struct urb *))
{
 struct usb_serial *serial = port->serial;
 struct urb *urb;

 urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!urb)
  return ((void*)0);

 usb_fill_bulk_urb(urb, serial->dev,
     usb_sndbulkpipe(serial->dev, endpoint) | dir,
     buf, len, callback, ctx);

 return urb;
}
