
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct upd78f0730_port_private {int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct upd78f0730_port_private* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct upd78f0730_port_private*) ;

__attribute__((used)) static int upd78f0730_port_probe(struct usb_serial_port *port)
{
 struct upd78f0730_port_private *private;

 private = kzalloc(sizeof(*private), GFP_KERNEL);
 if (!private)
  return -ENOMEM;

 mutex_init(&private->lock);
 usb_set_serial_port_data(port, private);

 return 0;
}
