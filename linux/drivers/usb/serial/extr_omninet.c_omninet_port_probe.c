
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct omninet_data {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct omninet_data* kzalloc (int,int ) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct omninet_data*) ;

__attribute__((used)) static int omninet_port_probe(struct usb_serial_port *port)
{
 struct omninet_data *od;

 od = kzalloc(sizeof(*od), GFP_KERNEL);
 if (!od)
  return -ENOMEM;

 usb_set_serial_port_data(port, od);

 return 0;
}
