
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_bufhead {int free; int mem_used; } ;
struct tty_port {struct tty_bufhead buf; } ;
struct tty_buffer {scalar_t__ size; int free; } ;


 scalar_t__ MIN_TTYB_SIZE ;
 int WARN_ON (int) ;
 scalar_t__ atomic_sub_return (scalar_t__,int *) ;
 int kfree (struct tty_buffer*) ;
 int llist_add (int *,int *) ;

__attribute__((used)) static void tty_buffer_free(struct tty_port *port, struct tty_buffer *b)
{
 struct tty_bufhead *buf = &port->buf;


 WARN_ON(atomic_sub_return(b->size, &buf->mem_used) < 0);

 if (b->size > MIN_TTYB_SIZE)
  kfree(b);
 else if (b->size > 0)
  llist_add(&b->free, &buf->free);
}
