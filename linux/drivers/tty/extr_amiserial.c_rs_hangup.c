
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int name; struct serial_state* driver_data; } ;
struct TYPE_2__ {int open_wait; int * tty; scalar_t__ count; } ;
struct serial_state {TYPE_1__ tport; } ;


 int rs_flush_buffer (struct tty_struct*) ;
 scalar_t__ serial_paranoia_check (struct serial_state*,int ,char*) ;
 int shutdown (struct tty_struct*,struct serial_state*) ;
 int tty_port_set_active (TYPE_1__*,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void rs_hangup(struct tty_struct *tty)
{
 struct serial_state *info = tty->driver_data;

 if (serial_paranoia_check(info, tty->name, "rs_hangup"))
  return;

 rs_flush_buffer(tty);
 shutdown(tty, info);
 info->tport.count = 0;
 tty_port_set_active(&info->tport, 0);
 info->tport.tty = ((void*)0);
 wake_up_interruptible(&info->tport.open_wait);
}
