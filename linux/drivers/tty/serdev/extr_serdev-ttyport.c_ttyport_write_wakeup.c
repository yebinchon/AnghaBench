
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int write_wait; int flags; } ;
struct tty_port {struct serdev_controller* client_data; } ;
struct serport {int flags; } ;
struct serdev_controller {int dummy; } ;


 int SERPORT_ACTIVE ;
 int TTY_DO_WRITE_WAKEUP ;
 struct serport* serdev_controller_get_drvdata (struct serdev_controller*) ;
 int serdev_controller_write_wakeup (struct serdev_controller*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (struct tty_port*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void ttyport_write_wakeup(struct tty_port *port)
{
 struct serdev_controller *ctrl = port->client_data;
 struct serport *serport = serdev_controller_get_drvdata(ctrl);
 struct tty_struct *tty;

 tty = tty_port_tty_get(port);
 if (!tty)
  return;

 if (test_and_clear_bit(TTY_DO_WRITE_WAKEUP, &tty->flags) &&
     test_bit(SERPORT_ACTIVE, &serport->flags))
  serdev_controller_write_wakeup(ctrl);


 wake_up_interruptible(&tty->write_wait);

 tty_kref_put(tty);
}
