
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ktermios {int c_cflag; } ;
struct tty_struct {int termios_rwsem; TYPE_1__* ops; struct ktermios termios; } ;
struct TYPE_2__ {int (* set_termios ) (struct tty_struct*,struct ktermios*) ;} ;


 int CLOCAL ;
 int C_CLOCAL (struct tty_struct*) ;
 int EINVAL ;
 int down_write (int *) ;
 int stub1 (struct tty_struct*,struct ktermios*) ;
 int up_write (int *) ;

__attribute__((used)) static int tty_change_softcar(struct tty_struct *tty, int arg)
{
 int ret = 0;
 int bit = arg ? CLOCAL : 0;
 struct ktermios old;

 down_write(&tty->termios_rwsem);
 old = tty->termios;
 tty->termios.c_cflag &= ~CLOCAL;
 tty->termios.c_cflag |= bit;
 if (tty->ops->set_termios)
  tty->ops->set_termios(tty, &old);
 if (C_CLOCAL(tty) != bit)
  ret = -EINVAL;
 up_write(&tty->termios_rwsem);
 return ret;
}
