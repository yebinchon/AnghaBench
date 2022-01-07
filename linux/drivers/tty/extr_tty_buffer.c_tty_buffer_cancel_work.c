
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct tty_port {TYPE_1__ buf; } ;


 int cancel_work_sync (int *) ;

bool tty_buffer_cancel_work(struct tty_port *port)
{
 return cancel_work_sync(&port->buf.work);
}
