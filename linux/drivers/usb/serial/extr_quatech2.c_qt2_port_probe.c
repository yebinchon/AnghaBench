
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int dev; TYPE_1__** port; } ;
struct qt2_port_private {struct qt2_port_private* write_buffer; int write_urb; struct usb_serial_port* port; int urb_lock; int lock; } ;
struct TYPE_2__ {int bulk_out_endpointAddress; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QT2_WRITE_BUFFER_SIZE ;
 int kfree (struct qt2_port_private*) ;
 struct qt2_port_private* kmalloc (int ,int ) ;
 struct qt2_port_private* kzalloc (int,int ) ;
 int qt2_write_bulk_callback ;
 int spin_lock_init (int *) ;
 int usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (int ,int ,int ,struct qt2_port_private*,int ,int ,struct usb_serial_port*) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct qt2_port_private*) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int qt2_port_probe(struct usb_serial_port *port)
{
 struct usb_serial *serial = port->serial;
 struct qt2_port_private *port_priv;
 u8 bEndpointAddress;

 port_priv = kzalloc(sizeof(*port_priv), GFP_KERNEL);
 if (!port_priv)
  return -ENOMEM;

 spin_lock_init(&port_priv->lock);
 spin_lock_init(&port_priv->urb_lock);
 port_priv->port = port;

 port_priv->write_buffer = kmalloc(QT2_WRITE_BUFFER_SIZE, GFP_KERNEL);
 if (!port_priv->write_buffer)
  goto err_buf;

 port_priv->write_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!port_priv->write_urb)
  goto err_urb;

 bEndpointAddress = serial->port[0]->bulk_out_endpointAddress;
 usb_fill_bulk_urb(port_priv->write_urb, serial->dev,
    usb_sndbulkpipe(serial->dev, bEndpointAddress),
    port_priv->write_buffer,
    QT2_WRITE_BUFFER_SIZE,
    qt2_write_bulk_callback, port);

 usb_set_serial_port_data(port, port_priv);

 return 0;
err_urb:
 kfree(port_priv->write_buffer);
err_buf:
 kfree(port_priv);
 return -ENOMEM;
}
