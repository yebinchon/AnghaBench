
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct tty_port {TYPE_1__ buf; } ;


 int TTY_LOCK_SLAVE ;
 int lockdep_set_subclass (int *,int ) ;

void tty_buffer_set_lock_subclass(struct tty_port *port)
{
 lockdep_set_subclass(&port->buf.lock, TTY_LOCK_SLAVE);
}
