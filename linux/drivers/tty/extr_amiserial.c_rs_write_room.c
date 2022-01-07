
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int name; struct serial_state* driver_data; } ;
struct TYPE_2__ {int tail; int head; } ;
struct serial_state {TYPE_1__ xmit; } ;


 int CIRC_SPACE (int ,int ,int ) ;
 int SERIAL_XMIT_SIZE ;
 scalar_t__ serial_paranoia_check (struct serial_state*,int ,char*) ;

__attribute__((used)) static int rs_write_room(struct tty_struct *tty)
{
 struct serial_state *info = tty->driver_data;

 if (serial_paranoia_check(info, tty->name, "rs_write_room"))
  return 0;
 return CIRC_SPACE(info->xmit.head, info->xmit.tail, SERIAL_XMIT_SIZE);
}
