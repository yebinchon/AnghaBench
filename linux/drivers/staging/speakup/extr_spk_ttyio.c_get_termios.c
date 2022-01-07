
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktermios {int dummy; } ;
struct tty_struct {int termios_rwsem; struct ktermios termios; } ;


 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static inline void get_termios(struct tty_struct *tty,
          struct ktermios *out_termios)
{
 down_read(&tty->termios_rwsem);
 *out_termios = tty->termios;
 up_read(&tty->termios_rwsem);
}
