
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_bufhead {int work; TYPE_1__* tail; } ;
struct tty_port {struct tty_bufhead buf; } ;
struct TYPE_2__ {int used; int commit; } ;


 int queue_work (int ,int *) ;
 int smp_store_release (int *,int ) ;
 int system_unbound_wq ;

void tty_schedule_flip(struct tty_port *port)
{
 struct tty_bufhead *buf = &port->buf;




 smp_store_release(&buf->tail->commit, buf->tail->used);
 queue_work(system_unbound_wq, &buf->work);
}
