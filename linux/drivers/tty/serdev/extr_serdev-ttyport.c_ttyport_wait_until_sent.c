
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct serport {struct tty_struct* tty; } ;
struct serdev_controller {int dummy; } ;


 struct serport* serdev_controller_get_drvdata (struct serdev_controller*) ;
 int tty_wait_until_sent (struct tty_struct*,long) ;

__attribute__((used)) static void ttyport_wait_until_sent(struct serdev_controller *ctrl, long timeout)
{
 struct serport *serport = serdev_controller_get_drvdata(ctrl);
 struct tty_struct *tty = serport->tty;

 tty_wait_until_sent(tty, timeout);
}
