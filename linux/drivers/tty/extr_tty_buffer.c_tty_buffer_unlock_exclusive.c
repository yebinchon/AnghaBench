
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_bufhead {int work; int lock; int priority; TYPE_1__* head; } ;
struct tty_port {struct tty_bufhead buf; } ;
struct TYPE_2__ {scalar_t__ commit; scalar_t__ read; } ;


 int atomic_dec (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;
 int system_unbound_wq ;

void tty_buffer_unlock_exclusive(struct tty_port *port)
{
 struct tty_bufhead *buf = &port->buf;
 int restart;

 restart = buf->head->commit != buf->head->read;

 atomic_dec(&buf->priority);
 mutex_unlock(&buf->lock);
 if (restart)
  queue_work(system_unbound_wq, &buf->work);
}
