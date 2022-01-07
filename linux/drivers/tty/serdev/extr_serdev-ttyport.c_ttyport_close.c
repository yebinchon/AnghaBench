
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; } ;
struct serport {int tty_idx; int flags; struct tty_struct* tty; } ;
struct serdev_controller {int dummy; } ;
struct TYPE_2__ {int (* close ) (struct tty_struct*,int *) ;} ;


 int SERPORT_ACTIVE ;
 int clear_bit (int ,int *) ;
 struct serport* serdev_controller_get_drvdata (struct serdev_controller*) ;
 int stub1 (struct tty_struct*,int *) ;
 int tty_lock (struct tty_struct*) ;
 int tty_release_struct (struct tty_struct*,int ) ;
 int tty_unlock (struct tty_struct*) ;

__attribute__((used)) static void ttyport_close(struct serdev_controller *ctrl)
{
 struct serport *serport = serdev_controller_get_drvdata(ctrl);
 struct tty_struct *tty = serport->tty;

 clear_bit(SERPORT_ACTIVE, &serport->flags);

 tty_lock(tty);
 if (tty->ops->close)
  tty->ops->close(tty, ((void*)0));
 tty_unlock(tty);

 tty_release_struct(tty, serport->tty_idx);
}
