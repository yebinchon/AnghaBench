
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ktermios {int c_ospeed; int c_ispeed; int c_line; } ;
struct tty_struct {int index; struct ktermios termios; TYPE_1__* driver; } ;
struct TYPE_2__ {int flags; struct ktermios init_termios; struct ktermios** termios; } ;


 int TTY_DRIVER_RESET_TERMIOS ;
 int tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_input_baud_rate (struct ktermios*) ;

void tty_init_termios(struct tty_struct *tty)
{
 struct ktermios *tp;
 int idx = tty->index;

 if (tty->driver->flags & TTY_DRIVER_RESET_TERMIOS)
  tty->termios = tty->driver->init_termios;
 else {

  tp = tty->driver->termios[idx];
  if (tp != ((void*)0)) {
   tty->termios = *tp;
   tty->termios.c_line = tty->driver->init_termios.c_line;
  } else
   tty->termios = tty->driver->init_termios;
 }

 tty->termios.c_ispeed = tty_termios_input_baud_rate(&tty->termios);
 tty->termios.c_ospeed = tty_termios_baud_rate(&tty->termios);
}
