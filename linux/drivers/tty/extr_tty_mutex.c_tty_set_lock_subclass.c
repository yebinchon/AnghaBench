
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int legacy_mutex; } ;


 int TTY_LOCK_SLAVE ;
 int lockdep_set_subclass (int *,int ) ;

void tty_set_lock_subclass(struct tty_struct *tty)
{
 lockdep_set_subclass(&tty->legacy_mutex, TTY_LOCK_SLAVE);
}
