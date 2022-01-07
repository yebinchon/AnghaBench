
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int name; struct isi_port* driver_data; } ;
struct serial_struct {int closing_wait; int close_delay; int flags; int irq; int port; struct isi_port* line; } ;
struct TYPE_4__ {int mutex; int closing_wait; int close_delay; int flags; } ;
struct isi_port {TYPE_2__ port; TYPE_1__* card; } ;
struct TYPE_3__ {int irq; int base; } ;


 int ENODEV ;
 int isi_ports ;
 scalar_t__ isicom_paranoia_check (struct isi_port*,int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int isicom_get_serial_info(struct tty_struct *tty,
 struct serial_struct *ss)
{
 struct isi_port *port = tty->driver_data;

 if (isicom_paranoia_check(port, tty->name, "isicom_ioctl"))
  return -ENODEV;

 mutex_lock(&port->port.mutex);

 ss->line = port - isi_ports;
 ss->port = port->card->base;
 ss->irq = port->card->irq;
 ss->flags = port->port.flags;

 ss->close_delay = port->port.close_delay;
 ss->closing_wait = port->port.closing_wait;
 mutex_unlock(&port->port.mutex);
 return 0;
}
