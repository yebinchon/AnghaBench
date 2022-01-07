
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_bufhead {int lock; int priority; } ;
struct tty_port {struct tty_bufhead buf; } ;


 int atomic_inc (int *) ;
 int mutex_lock (int *) ;

void tty_buffer_lock_exclusive(struct tty_port *port)
{
 struct tty_bufhead *buf = &port->buf;

 atomic_inc(&buf->priority);
 mutex_lock(&buf->lock);
}
