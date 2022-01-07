
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mem_limit; } ;
struct tty_port {TYPE_1__ buf; } ;


 int EINVAL ;
 int MIN_TTYB_SIZE ;

int tty_buffer_set_limit(struct tty_port *port, int limit)
{
 if (limit < MIN_TTYB_SIZE)
  return -EINVAL;
 port->buf.mem_limit = limit;
 return 0;
}
