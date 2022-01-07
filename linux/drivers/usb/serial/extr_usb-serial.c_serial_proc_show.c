
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
struct usb_serial_port {char* port_number; struct usb_serial* serial; } ;
struct usb_serial {char* num_ports; int disc_mutex; TYPE_4__* dev; TYPE_2__* type; } ;
struct seq_file {int dummy; } ;
struct TYPE_7__ {int idProduct; int idVendor; } ;
struct TYPE_8__ {TYPE_3__ descriptor; } ;
struct TYPE_5__ {scalar_t__ owner; } ;
struct TYPE_6__ {char* description; TYPE_1__ driver; } ;


 int USB_SERIAL_TTY_MINORS ;
 int le16_to_cpu (int ) ;
 char* module_name (scalar_t__) ;
 int mutex_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;
 int usb_make_path (TYPE_4__*,char*,int) ;
 struct usb_serial_port* usb_serial_port_get_by_minor (int) ;
 int usb_serial_put (struct usb_serial*) ;

__attribute__((used)) static int serial_proc_show(struct seq_file *m, void *v)
{
 struct usb_serial *serial;
 struct usb_serial_port *port;
 int i;
 char tmp[40];

 seq_puts(m, "usbserinfo:1.0 driver:2.0\n");
 for (i = 0; i < USB_SERIAL_TTY_MINORS; ++i) {
  port = usb_serial_port_get_by_minor(i);
  if (port == ((void*)0))
   continue;
  serial = port->serial;

  seq_printf(m, "%d:", i);
  if (serial->type->driver.owner)
   seq_printf(m, " module:%s",
    module_name(serial->type->driver.owner));
  seq_printf(m, " name:\"%s\"",
    serial->type->description);
  seq_printf(m, " vendor:%04x product:%04x",
   le16_to_cpu(serial->dev->descriptor.idVendor),
   le16_to_cpu(serial->dev->descriptor.idProduct));
  seq_printf(m, " num_ports:%d", serial->num_ports);
  seq_printf(m, " port:%d", port->port_number);
  usb_make_path(serial->dev, tmp, sizeof(tmp));
  seq_printf(m, " path:%s", tmp);

  seq_putc(m, '\n');
  usb_serial_put(serial);
  mutex_unlock(&serial->disc_mutex);
 }
 return 0;
}
