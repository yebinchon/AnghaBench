
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int * ldisc; } ;


 int tty_ldisc_put (int *) ;

void tty_ldisc_deinit(struct tty_struct *tty)
{

 if (tty->ldisc)
  tty_ldisc_put(tty->ldisc);
 tty->ldisc = ((void*)0);
}
