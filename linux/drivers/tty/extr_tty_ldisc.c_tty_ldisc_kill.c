
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int * ldisc; int ldisc_sem; } ;


 int lockdep_assert_held_write (int *) ;
 int tty_ldisc_close (struct tty_struct*,int *) ;
 int tty_ldisc_put (int *) ;

__attribute__((used)) static void tty_ldisc_kill(struct tty_struct *tty)
{
 lockdep_assert_held_write(&tty->ldisc_sem);
 if (!tty->ldisc)
  return;



 tty_ldisc_close(tty, tty->ldisc);
 tty_ldisc_put(tty->ldisc);

 tty->ldisc = ((void*)0);
}
