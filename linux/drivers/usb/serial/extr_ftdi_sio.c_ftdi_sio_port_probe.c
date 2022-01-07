
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial_port {TYPE_2__* serial; } ;
struct ftdi_sio_quirk {int (* port_probe ) (struct ftdi_private*) ;} ;
struct ftdi_private {int latency; int cfg_lock; } ;
struct TYPE_4__ {TYPE_1__* interface; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int create_sysfs_attrs (struct usb_serial_port*) ;
 int dev_err (int *,char*,int) ;
 int ftdi_determine_type (struct usb_serial_port*) ;
 int ftdi_gpio_init (struct usb_serial_port*) ;
 int ftdi_set_max_packet_size (struct usb_serial_port*) ;
 struct ftdi_private* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 scalar_t__ read_latency_timer (struct usb_serial_port*) ;
 int stub1 (struct ftdi_private*) ;
 struct ftdi_sio_quirk* usb_get_serial_data (TYPE_2__*) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct ftdi_private*) ;
 int write_latency_timer (struct usb_serial_port*) ;

__attribute__((used)) static int ftdi_sio_port_probe(struct usb_serial_port *port)
{
 struct ftdi_private *priv;
 const struct ftdi_sio_quirk *quirk = usb_get_serial_data(port->serial);
 int result;

 priv = kzalloc(sizeof(struct ftdi_private), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 mutex_init(&priv->cfg_lock);

 if (quirk && quirk->port_probe)
  quirk->port_probe(priv);

 usb_set_serial_port_data(port, priv);

 ftdi_determine_type(port);
 ftdi_set_max_packet_size(port);
 if (read_latency_timer(port) < 0)
  priv->latency = 16;
 write_latency_timer(port);
 create_sysfs_attrs(port);

 result = ftdi_gpio_init(port);
 if (result < 0) {
  dev_err(&port->serial->interface->dev,
   "GPIO initialisation failed: %d\n",
   result);
 }

 return 0;
}
