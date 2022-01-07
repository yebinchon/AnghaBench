
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int * read_urbs; } ;
typedef int gfp_t ;


 int ARRAY_SIZE (int *) ;
 int usb_kill_urb (int ) ;
 int usb_serial_generic_submit_read_urb (struct usb_serial_port*,int,int ) ;

int usb_serial_generic_submit_read_urbs(struct usb_serial_port *port,
     gfp_t mem_flags)
{
 int res;
 int i;

 for (i = 0; i < ARRAY_SIZE(port->read_urbs); ++i) {
  res = usb_serial_generic_submit_read_urb(port, i, mem_flags);
  if (res)
   goto err;
 }

 return 0;
err:
 for (; i >= 0; --i)
  usb_kill_urb(port->read_urbs[i]);

 return res;
}
