
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int ldisc; } ;


 int tty_ldisc_close (struct tty_struct*,int ) ;
 int tty_ldisc_open (struct tty_struct*,int ) ;

int tty_ldisc_setup(struct tty_struct *tty, struct tty_struct *o_tty)
{
 int retval = tty_ldisc_open(tty, tty->ldisc);
 if (retval)
  return retval;

 if (o_tty) {




  retval = tty_ldisc_open(o_tty, o_tty->ldisc);
  if (retval) {
   tty_ldisc_close(tty, tty->ldisc);
   return retval;
  }
 }
 return 0;
}
