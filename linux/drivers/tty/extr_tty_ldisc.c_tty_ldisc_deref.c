
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_ldisc {TYPE_1__* tty; } ;
struct TYPE_2__ {int ldisc_sem; } ;


 int ldsem_up_read (int *) ;

void tty_ldisc_deref(struct tty_ldisc *ld)
{
 ldsem_up_read(&ld->tty->ldisc_sem);
}
