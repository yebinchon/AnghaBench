
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flags; int link; } ;


 int TTY_THROTTLED ;
 int set_bit (int ,int *) ;
 int tty_wakeup (int ) ;

__attribute__((used)) static void pty_unthrottle(struct tty_struct *tty)
{
 tty_wakeup(tty->link);
 set_bit(TTY_THROTTLED, &tty->flags);
}
