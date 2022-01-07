
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* link; scalar_t__ stopped; } ;
struct TYPE_2__ {int port; } ;


 int tty_buffer_space_avail (int ) ;

__attribute__((used)) static int pty_write_room(struct tty_struct *tty)
{
 if (tty->stopped)
  return 0;
 return tty_buffer_space_avail(tty->link->port);
}
