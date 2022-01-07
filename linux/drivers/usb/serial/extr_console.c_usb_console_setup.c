
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct usbcons_info {struct usb_serial_port* port; } ;
struct TYPE_10__ {int console; scalar_t__ count; } ;
struct usb_serial_port {TYPE_4__ port; int dev; struct usb_serial* serial; } ;
struct usb_serial {int disc_mutex; int interface; TYPE_1__* type; } ;
struct TYPE_9__ {int c_cflag; } ;
struct tty_struct {TYPE_3__ termios; int * ops; TYPE_2__* driver; int tty_files; int files_lock; int ldisc_sem; int index; int kref; } ;
struct ktermios {int dummy; } ;
struct console {int index; } ;
struct TYPE_8__ {int owner; int kref; } ;
struct TYPE_7__ {int (* open ) (int *,struct usb_serial_port*) ;int (* set_termios ) (struct tty_struct*,struct usb_serial_port*,struct ktermios*) ;} ;


 int CLOCAL ;
 int CREAD ;
 int CS7 ;
 int CS8 ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HUPCL ;
 int INIT_LIST_HEAD (int *) ;
 int PARENB ;
 int PARODD ;
 int __module_get (int ) ;
 int dev_err (int *,char*) ;
 int init_ldsem (int *) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 struct tty_struct* kzalloc (int,int ) ;
 int memset (struct ktermios*,int ,int) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int ) ;
 int simple_strtoul (char*,int *,int) ;
 int spin_lock_init (int *) ;
 int stub1 (int *,struct usb_serial_port*) ;
 int stub2 (struct tty_struct*,struct usb_serial_port*,struct ktermios*) ;
 int tty_init_termios (struct tty_struct*) ;
 int tty_kref_put (struct tty_struct*) ;
 int tty_port_initialized (TYPE_4__*) ;
 int tty_port_set_initialized (TYPE_4__*,int) ;
 int tty_port_tty_set (TYPE_4__*,struct tty_struct*) ;
 int tty_save_termios (struct tty_struct*) ;
 int tty_termios_encode_baud_rate (TYPE_3__*,int,int) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;
 int usb_console_fake_tty_ops ;
 struct usb_serial_port* usb_serial_port_get_by_minor (int ) ;
 int usb_serial_put (struct usb_serial*) ;
 TYPE_2__* usb_serial_tty_driver ;
 struct usbcons_info usbcons_info ;

__attribute__((used)) static int usb_console_setup(struct console *co, char *options)
{
 struct usbcons_info *info = &usbcons_info;
 int baud = 9600;
 int bits = 8;
 int parity = 'n';
 int doflow = 0;
 int cflag = CREAD | HUPCL | CLOCAL;
 char *s;
 struct usb_serial *serial;
 struct usb_serial_port *port;
 int retval;
 struct tty_struct *tty = ((void*)0);
 struct ktermios dummy;

 if (options) {
  baud = simple_strtoul(options, ((void*)0), 10);
  s = options;
  while (*s >= '0' && *s <= '9')
   s++;
  if (*s)
   parity = *s++;
  if (*s)
   bits = *s++ - '0';
  if (*s)
   doflow = (*s++ == 'r');
 }


 if (baud == 0)
  baud = 9600;

 switch (bits) {
 case 7:
  cflag |= CS7;
  break;
 default:
 case 8:
  cflag |= CS8;
  break;
 }
 switch (parity) {
 case 'o': case 'O':
  cflag |= PARODD;
  break;
 case 'e': case 'E':
  cflag |= PARENB;
  break;
 }





 port = usb_serial_port_get_by_minor(co->index);
 if (port == ((void*)0)) {

  pr_err("No USB device connected to ttyUSB%i\n", co->index);
  return -ENODEV;
 }
 serial = port->serial;

 retval = usb_autopm_get_interface(serial->interface);
 if (retval)
  goto error_get_interface;

 tty_port_tty_set(&port->port, ((void*)0));

 info->port = port;

 ++port->port.count;
 if (!tty_port_initialized(&port->port)) {
  if (serial->type->set_termios) {





   tty = kzalloc(sizeof(*tty), GFP_KERNEL);
   if (!tty) {
    retval = -ENOMEM;
    goto reset_open_count;
   }
   kref_init(&tty->kref);
   tty->driver = usb_serial_tty_driver;
   tty->index = co->index;
   init_ldsem(&tty->ldisc_sem);
   spin_lock_init(&tty->files_lock);
   INIT_LIST_HEAD(&tty->tty_files);
   kref_get(&tty->driver->kref);
   __module_get(tty->driver->owner);
   tty->ops = &usb_console_fake_tty_ops;
   tty_init_termios(tty);
   tty_port_tty_set(&port->port, tty);
  }



  retval = serial->type->open(((void*)0), port);
  if (retval) {
   dev_err(&port->dev, "could not open USB console port\n");
   goto fail;
  }

  if (serial->type->set_termios) {
   tty->termios.c_cflag = cflag;
   tty_termios_encode_baud_rate(&tty->termios, baud, baud);
   memset(&dummy, 0, sizeof(struct ktermios));
   serial->type->set_termios(tty, port, &dummy);

   tty_port_tty_set(&port->port, ((void*)0));
   tty_save_termios(tty);
   tty_kref_put(tty);
  }
  tty_port_set_initialized(&port->port, 1);
 }


 --port->port.count;


 port->port.console = 1;

 mutex_unlock(&serial->disc_mutex);
 return retval;

 fail:
 tty_port_tty_set(&port->port, ((void*)0));
 tty_kref_put(tty);
 reset_open_count:
 port->port.count = 0;
 info->port = ((void*)0);
 usb_autopm_put_interface(serial->interface);
 error_get_interface:
 usb_serial_put(serial);
 mutex_unlock(&serial->disc_mutex);
 return retval;
}
