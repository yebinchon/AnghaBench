
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whiteheat_private {int dummy; } ;
struct usb_serial_port {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct whiteheat_private* kzalloc (int,int ) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct whiteheat_private*) ;

__attribute__((used)) static int whiteheat_port_probe(struct usb_serial_port *port)
{
 struct whiteheat_private *info;

 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 usb_set_serial_port_data(port, info);

 return 0;
}
