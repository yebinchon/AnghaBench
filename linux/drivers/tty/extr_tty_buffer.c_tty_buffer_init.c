
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_bufhead {int mem_limit; int work; int priority; int mem_used; int free; int sentinel; int * tail; int * head; int lock; } ;
struct tty_port {struct tty_bufhead buf; } ;


 int INIT_WORK (int *,int ) ;
 int TTYB_DEFAULT_MEM_LIMIT ;
 int atomic_set (int *,int ) ;
 int flush_to_ldisc ;
 int init_llist_head (int *) ;
 int mutex_init (int *) ;
 int tty_buffer_reset (int *,int ) ;

void tty_buffer_init(struct tty_port *port)
{
 struct tty_bufhead *buf = &port->buf;

 mutex_init(&buf->lock);
 tty_buffer_reset(&buf->sentinel, 0);
 buf->head = &buf->sentinel;
 buf->tail = &buf->sentinel;
 init_llist_head(&buf->free);
 atomic_set(&buf->mem_used, 0);
 atomic_set(&buf->priority, 0);
 INIT_WORK(&buf->work, flush_to_ldisc);
 buf->mem_limit = TTYB_DEFAULT_MEM_LIMIT;
}
