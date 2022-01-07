
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mem_limit; int mem_used; } ;
struct tty_port {TYPE_1__ buf; } ;


 int atomic_read (int *) ;
 int max (int,int ) ;

int tty_buffer_space_avail(struct tty_port *port)
{
 int space = port->buf.mem_limit - atomic_read(&port->buf.mem_used);
 return max(space, 0);
}
