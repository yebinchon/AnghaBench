
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct tty_driver {int dummy; } ;
struct TYPE_2__ {int mutex; } ;
struct fwtty_port {int index; TYPE_1__ port; } ;


 struct tty_driver* fwloop_driver ;
 int loop_idx (struct fwtty_port*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (TYPE_1__*) ;
 int tty_unregister_device (struct tty_driver*,int ) ;
 int tty_vhangup (struct tty_struct*) ;

__attribute__((used)) static void fwserial_close_port(struct tty_driver *driver,
    struct fwtty_port *port)
{
 struct tty_struct *tty;

 mutex_lock(&port->port.mutex);
 tty = tty_port_tty_get(&port->port);
 if (tty) {
  tty_vhangup(tty);
  tty_kref_put(tty);
 }
 mutex_unlock(&port->port.mutex);

 if (driver == fwloop_driver)
  tty_unregister_device(driver, loop_idx(port));
 else
  tty_unregister_device(driver, port->index);
}
