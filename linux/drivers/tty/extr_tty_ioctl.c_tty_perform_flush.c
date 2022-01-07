
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct tty_ldisc {int dummy; } ;


 int __tty_perform_flush (struct tty_struct*,unsigned long) ;
 int tty_check_change (struct tty_struct*) ;
 int tty_ldisc_deref (struct tty_ldisc*) ;
 struct tty_ldisc* tty_ldisc_ref_wait (struct tty_struct*) ;

int tty_perform_flush(struct tty_struct *tty, unsigned long arg)
{
 struct tty_ldisc *ld;
 int retval = tty_check_change(tty);
 if (retval)
  return retval;

 ld = tty_ldisc_ref_wait(tty);
 retval = __tty_perform_flush(tty, arg);
 if (ld)
  tty_ldisc_deref(ld);
 return retval;
}
