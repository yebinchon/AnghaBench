
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct tty_port* port; } ;
struct tty_bufhead {int lock; int priority; struct tty_buffer* head; } ;
struct tty_port {struct tty_bufhead buf; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct tty_buffer {int commit; int read; int next; } ;
struct TYPE_2__ {int (* flush_buffer ) (struct tty_struct*) ;} ;


 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tty_buffer* smp_load_acquire (int *) ;
 int stub1 (struct tty_struct*) ;
 int tty_buffer_free (struct tty_port*,struct tty_buffer*) ;

void tty_buffer_flush(struct tty_struct *tty, struct tty_ldisc *ld)
{
 struct tty_port *port = tty->port;
 struct tty_bufhead *buf = &port->buf;
 struct tty_buffer *next;

 atomic_inc(&buf->priority);

 mutex_lock(&buf->lock);



 while ((next = smp_load_acquire(&buf->head->next)) != ((void*)0)) {
  tty_buffer_free(port, buf->head);
  buf->head = next;
 }
 buf->head->read = buf->head->commit;

 if (ld && ld->ops->flush_buffer)
  ld->ops->flush_buffer(tty);

 atomic_dec(&buf->priority);
 mutex_unlock(&buf->lock);
}
