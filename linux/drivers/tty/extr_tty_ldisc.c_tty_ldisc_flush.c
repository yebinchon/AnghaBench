
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct tty_ldisc {int dummy; } ;


 int tty_buffer_flush (struct tty_struct*,struct tty_ldisc*) ;
 int tty_ldisc_deref (struct tty_ldisc*) ;
 struct tty_ldisc* tty_ldisc_ref (struct tty_struct*) ;

void tty_ldisc_flush(struct tty_struct *tty)
{
 struct tty_ldisc *ld = tty_ldisc_ref(tty);

 tty_buffer_flush(tty, ld);
 if (ld)
  tty_ldisc_deref(ld);
}
