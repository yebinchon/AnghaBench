
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ktermios {int dummy; } ;
struct tty_struct {int index; struct ktermios termios; TYPE_1__* driver; } ;
struct TYPE_2__ {int flags; struct ktermios** termios; } ;


 int GFP_KERNEL ;
 int TTY_DRIVER_RESET_TERMIOS ;
 struct ktermios* kmalloc (int,int ) ;

void tty_save_termios(struct tty_struct *tty)
{
 struct ktermios *tp;
 int idx = tty->index;


 if (tty->driver->flags & TTY_DRIVER_RESET_TERMIOS)
  return;


 tp = tty->driver->termios[idx];
 if (tp == ((void*)0)) {
  tp = kmalloc(sizeof(struct ktermios), GFP_KERNEL);
  if (tp == ((void*)0))
   return;
  tty->driver->termios[idx] = tp;
 }
 *tp = tty->termios;
}
