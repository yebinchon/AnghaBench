
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int ldisc_sem; struct tty_ldisc* ldisc; } ;
struct tty_ldisc {int dummy; } ;


 scalar_t__ ldsem_down_read_trylock (int *) ;
 int ldsem_up_read (int *) ;

struct tty_ldisc *tty_ldisc_ref(struct tty_struct *tty)
{
 struct tty_ldisc *ld = ((void*)0);

 if (ldsem_down_read_trylock(&tty->ldisc_sem)) {
  ld = tty->ldisc;
  if (!ld)
   ldsem_up_read(&tty->ldisc_sem);
 }
 return ld;
}
