
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flags; } ;


 int TTY_LDISC_CHANGING ;
 int TTY_LDISC_HALTED ;
 int __tty_ldisc_unlock (struct tty_struct*) ;
 int clear_bit (int ,int *) ;

void tty_ldisc_unlock(struct tty_struct *tty)
{
 clear_bit(TTY_LDISC_HALTED, &tty->flags);

 clear_bit(TTY_LDISC_CHANGING, &tty->flags);
 __tty_ldisc_unlock(tty);
}
