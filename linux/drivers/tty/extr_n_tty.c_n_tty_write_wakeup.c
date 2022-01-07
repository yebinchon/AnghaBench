
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int fasync; int flags; } ;


 int POLL_OUT ;
 int SIGIO ;
 int TTY_DO_WRITE_WAKEUP ;
 int clear_bit (int ,int *) ;
 int kill_fasync (int *,int ,int ) ;

__attribute__((used)) static void n_tty_write_wakeup(struct tty_struct *tty)
{
 clear_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);
 kill_fasync(&tty->fasync, SIGIO, POLL_OUT);
}
