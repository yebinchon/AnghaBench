
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct tty_port {TYPE_1__ buf; } ;


 int flush_work (int *) ;

void tty_buffer_flush_work(struct tty_port *port)
{
 flush_work(&port->buf.work);
}
