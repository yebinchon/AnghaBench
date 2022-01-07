
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int port; int termios_rwsem; TYPE_2__* ops; struct tty_ldisc* ldisc; int flags; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* set_ldisc ) (struct tty_struct*) ;} ;
struct TYPE_3__ {int num; } ;


 int EIO ;
 int HZ ;
 scalar_t__ IS_ERR (struct tty_ldisc*) ;
 int PTR_ERR (struct tty_ldisc*) ;
 int TTY_HUPPED ;
 int down_read (int *) ;
 int stub1 (struct tty_struct*) ;
 scalar_t__ test_bit (int ,int *) ;
 int tty_buffer_restart_work (int ) ;
 int tty_ldisc_close (struct tty_struct*,struct tty_ldisc*) ;
 struct tty_ldisc* tty_ldisc_get (struct tty_struct*,int) ;
 int tty_ldisc_lock (struct tty_struct*,int) ;
 int tty_ldisc_open (struct tty_struct*,struct tty_ldisc*) ;
 int tty_ldisc_put (struct tty_ldisc*) ;
 int tty_ldisc_restore (struct tty_struct*,struct tty_ldisc*) ;
 int tty_ldisc_unlock (struct tty_struct*) ;
 int tty_lock (struct tty_struct*) ;
 int tty_set_termios_ldisc (struct tty_struct*,int) ;
 int tty_unlock (struct tty_struct*) ;
 int up_read (int *) ;

int tty_set_ldisc(struct tty_struct *tty, int disc)
{
 int retval;
 struct tty_ldisc *old_ldisc, *new_ldisc;

 new_ldisc = tty_ldisc_get(tty, disc);
 if (IS_ERR(new_ldisc))
  return PTR_ERR(new_ldisc);

 tty_lock(tty);
 retval = tty_ldisc_lock(tty, 5 * HZ);
 if (retval)
  goto err;

 if (!tty->ldisc) {
  retval = -EIO;
  goto out;
 }


 if (tty->ldisc->ops->num == disc)
  goto out;

 if (test_bit(TTY_HUPPED, &tty->flags)) {

  retval = -EIO;
  goto out;
 }

 old_ldisc = tty->ldisc;


 tty_ldisc_close(tty, old_ldisc);


 tty->ldisc = new_ldisc;
 tty_set_termios_ldisc(tty, disc);

 retval = tty_ldisc_open(tty, new_ldisc);
 if (retval < 0) {

  tty_ldisc_put(new_ldisc);
  tty_ldisc_restore(tty, old_ldisc);
 }

 if (tty->ldisc->ops->num != old_ldisc->ops->num && tty->ops->set_ldisc) {
  down_read(&tty->termios_rwsem);
  tty->ops->set_ldisc(tty);
  up_read(&tty->termios_rwsem);
 }






 new_ldisc = old_ldisc;
out:
 tty_ldisc_unlock(tty);



 tty_buffer_restart_work(tty->port);
err:
 tty_ldisc_put(new_ldisc);
 tty_unlock(tty);
 return retval;
}
