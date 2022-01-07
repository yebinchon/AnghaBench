
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; } ;
struct serport {struct tty_struct* tty; } ;
struct serdev_controller {int dummy; } ;
struct TYPE_2__ {int (* tiocmget ) (struct tty_struct*) ;} ;


 int ENOTSUPP ;
 struct serport* serdev_controller_get_drvdata (struct serdev_controller*) ;
 int stub1 (struct tty_struct*) ;

__attribute__((used)) static int ttyport_get_tiocm(struct serdev_controller *ctrl)
{
 struct serport *serport = serdev_controller_get_drvdata(ctrl);
 struct tty_struct *tty = serport->tty;

 if (!tty->ops->tiocmget)
  return -ENOTSUPP;

 return tty->ops->tiocmget(tty);
}
