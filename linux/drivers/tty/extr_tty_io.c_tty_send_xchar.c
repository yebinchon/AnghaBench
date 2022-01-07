
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int stopped; int termios_rwsem; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write ) (struct tty_struct*,char*,int) ;int (* send_xchar ) (struct tty_struct*,char) ;} ;


 int ERESTARTSYS ;
 int down_read (int *) ;
 int start_tty (struct tty_struct*) ;
 int stop_tty (struct tty_struct*) ;
 int stub1 (struct tty_struct*,char) ;
 int stub2 (struct tty_struct*,char*,int) ;
 scalar_t__ tty_write_lock (struct tty_struct*,int ) ;
 int tty_write_unlock (struct tty_struct*) ;
 int up_read (int *) ;

int tty_send_xchar(struct tty_struct *tty, char ch)
{
 int was_stopped = tty->stopped;

 if (tty->ops->send_xchar) {
  down_read(&tty->termios_rwsem);
  tty->ops->send_xchar(tty, ch);
  up_read(&tty->termios_rwsem);
  return 0;
 }

 if (tty_write_lock(tty, 0) < 0)
  return -ERESTARTSYS;

 down_read(&tty->termios_rwsem);
 if (was_stopped)
  start_tty(tty);
 tty->ops->write(tty, &ch, 1);
 if (was_stopped)
  stop_tty(tty);
 up_read(&tty->termios_rwsem);
 tty_write_unlock(tty);
 return 0;
}
