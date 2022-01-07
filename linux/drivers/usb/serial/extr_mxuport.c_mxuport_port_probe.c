
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int port_number; int dev; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct mxuport_port {int spinlock; int mutex; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MX_INT_RS232 ;
 int RQ_VENDOR_SET_FIFO_DISABLE ;
 int RQ_VENDOR_SET_HIGH_PERFOR ;
 int RQ_VENDOR_SET_INTERFACE ;
 struct mxuport_port* devm_kzalloc (int *,int,int ) ;
 int mutex_init (int *) ;
 int mxuport_send_ctrl_urb (struct usb_serial*,int ,int ,int ) ;
 int spin_lock_init (int *) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct mxuport_port*) ;

__attribute__((used)) static int mxuport_port_probe(struct usb_serial_port *port)
{
 struct usb_serial *serial = port->serial;
 struct mxuport_port *mxport;
 int err;

 mxport = devm_kzalloc(&port->dev, sizeof(struct mxuport_port),
         GFP_KERNEL);
 if (!mxport)
  return -ENOMEM;

 mutex_init(&mxport->mutex);
 spin_lock_init(&mxport->spinlock);


 usb_set_serial_port_data(port, mxport);


 err = mxuport_send_ctrl_urb(serial, RQ_VENDOR_SET_FIFO_DISABLE,
        0, port->port_number);
 if (err)
  return err;


 err = mxuport_send_ctrl_urb(serial, RQ_VENDOR_SET_HIGH_PERFOR,
        0, port->port_number);
 if (err)
  return err;


 return mxuport_send_ctrl_urb(serial, RQ_VENDOR_SET_INTERFACE,
         MX_INT_RS232,
         port->port_number);
}
