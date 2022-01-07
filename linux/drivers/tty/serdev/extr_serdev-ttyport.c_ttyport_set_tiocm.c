
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; } ;
struct serport {struct tty_struct* tty; } ;
struct serdev_controller {int dummy; } ;
struct TYPE_2__ {int (* tiocmset ) (struct tty_struct*,unsigned int,unsigned int) ;} ;


 int ENOTSUPP ;
 struct serport* serdev_controller_get_drvdata (struct serdev_controller*) ;
 int stub1 (struct tty_struct*,unsigned int,unsigned int) ;

__attribute__((used)) static int ttyport_set_tiocm(struct serdev_controller *ctrl, unsigned int set, unsigned int clear)
{
 struct serport *serport = serdev_controller_get_drvdata(ctrl);
 struct tty_struct *tty = serport->tty;

 if (!tty->ops->tiocmset)
  return -ENOTSUPP;

 return tty->ops->tiocmset(tty, set, clear);
}
