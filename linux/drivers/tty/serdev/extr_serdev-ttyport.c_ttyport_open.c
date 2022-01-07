
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ktermios {int c_iflag; int c_lflag; int c_cflag; int c_oflag; } ;
struct tty_struct {TYPE_1__* ops; struct ktermios termios; } ;
struct serport {int tty_idx; int flags; struct tty_struct* tty; int tty_drv; } ;
struct serdev_controller {int dummy; } ;
struct TYPE_2__ {int (* open ) (struct tty_struct*,int *) ;int (* close ) (struct tty_struct*,int *) ;} ;


 int BRKINT ;
 int CLOCAL ;
 int CRTSCTS ;
 int CS8 ;
 int CSIZE ;
 int ECHO ;
 int ECHONL ;
 int ENODEV ;
 int ICANON ;
 int ICRNL ;
 int IEXTEN ;
 int IGNBRK ;
 int IGNCR ;
 int INLCR ;
 int ISIG ;
 int ISTRIP ;
 scalar_t__ IS_ERR (struct tty_struct*) ;
 int IXON ;
 int OPOST ;
 int PARENB ;
 int PARMRK ;
 int PTR_ERR (struct tty_struct*) ;
 int SERPORT_ACTIVE ;
 struct serport* serdev_controller_get_drvdata (struct serdev_controller*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct tty_struct*,int *) ;
 int stub2 (struct tty_struct*,int *) ;
 struct tty_struct* tty_init_dev (int ,int ) ;
 int tty_release_struct (struct tty_struct*,int ) ;
 int tty_set_termios (struct tty_struct*,struct ktermios*) ;
 int tty_unlock (struct tty_struct*) ;

__attribute__((used)) static int ttyport_open(struct serdev_controller *ctrl)
{
 struct serport *serport = serdev_controller_get_drvdata(ctrl);
 struct tty_struct *tty;
 struct ktermios ktermios;
 int ret;

 tty = tty_init_dev(serport->tty_drv, serport->tty_idx);
 if (IS_ERR(tty))
  return PTR_ERR(tty);
 serport->tty = tty;

 if (!tty->ops->open || !tty->ops->close) {
  ret = -ENODEV;
  goto err_unlock;
 }

 ret = tty->ops->open(serport->tty, ((void*)0));
 if (ret)
  goto err_close;

 tty_unlock(serport->tty);


 ktermios = tty->termios;
 ktermios.c_iflag &= ~(IGNBRK | BRKINT | PARMRK | ISTRIP |
         INLCR | IGNCR | ICRNL | IXON);
 ktermios.c_oflag &= ~OPOST;
 ktermios.c_lflag &= ~(ECHO | ECHONL | ICANON | ISIG | IEXTEN);
 ktermios.c_cflag &= ~(CSIZE | PARENB);
 ktermios.c_cflag |= CS8;
 ktermios.c_cflag |= CRTSCTS;

 ktermios.c_cflag |= CLOCAL;
 tty_set_termios(tty, &ktermios);

 set_bit(SERPORT_ACTIVE, &serport->flags);

 return 0;

err_close:
 tty->ops->close(tty, ((void*)0));
err_unlock:
 tty_unlock(tty);
 tty_release_struct(tty, serport->tty_idx);

 return ret;
}
