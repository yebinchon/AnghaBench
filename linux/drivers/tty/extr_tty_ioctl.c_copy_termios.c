
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktermios {int dummy; } ;
struct tty_struct {int termios_rwsem; struct ktermios termios; } ;


 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static void copy_termios(struct tty_struct *tty, struct ktermios *kterm)
{
 down_read(&tty->termios_rwsem);
 *kterm = tty->termios;
 up_read(&tty->termios_rwsem);
}
