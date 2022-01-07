
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_line; } ;
struct tty_struct {scalar_t__ receive_room; int * disc_data; int termios_rwsem; TYPE_1__ termios; } ;


 int down_write (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void tty_set_termios_ldisc(struct tty_struct *tty, int disc)
{
 down_write(&tty->termios_rwsem);
 tty->termios.c_line = disc;
 up_write(&tty->termios_rwsem);

 tty->disc_data = ((void*)0);
 tty->receive_room = 0;
}
