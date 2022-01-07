
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct tty_port {TYPE_1__ buf; } ;


 int queue_work (int ,int *) ;
 int system_unbound_wq ;

bool tty_buffer_restart_work(struct tty_port *port)
{
 return queue_work(system_unbound_wq, &port->buf.work);
}
