
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct tty_ldisc* ldisc; int ldisc_sem; } ;
struct tty_ldisc {int dummy; } ;


 scalar_t__ IS_ERR (struct tty_ldisc*) ;
 int PTR_ERR (struct tty_ldisc*) ;
 int lockdep_assert_held_write (int *) ;
 struct tty_ldisc* tty_ldisc_get (struct tty_struct*,int) ;
 int tty_ldisc_open (struct tty_struct*,struct tty_ldisc*) ;
 int tty_ldisc_put (struct tty_ldisc*) ;
 int tty_set_termios_ldisc (struct tty_struct*,int) ;

__attribute__((used)) static int tty_ldisc_failto(struct tty_struct *tty, int ld)
{
 struct tty_ldisc *disc = tty_ldisc_get(tty, ld);
 int r;

 lockdep_assert_held_write(&tty->ldisc_sem);
 if (IS_ERR(disc))
  return PTR_ERR(disc);
 tty->ldisc = disc;
 tty_set_termios_ldisc(tty, ld);
 if ((r = tty_ldisc_open(tty, disc)) < 0)
  tty_ldisc_put(disc);
 return r;
}
