
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct tty_buffer* tail; } ;
struct tty_port {TYPE_1__ buf; } ;
struct tty_buffer {int used; int flags; } ;


 int TTYB_NORMAL ;
 int TTY_NORMAL ;
 int __tty_buffer_request_room (struct tty_port*,size_t,int) ;
 unsigned char* char_buf_ptr (struct tty_buffer*,int) ;
 int flag_buf_ptr (struct tty_buffer*,int) ;
 scalar_t__ likely (int) ;
 int memset (int ,int ,int) ;

int tty_prepare_flip_string(struct tty_port *port, unsigned char **chars,
  size_t size)
{
 int space = __tty_buffer_request_room(port, size, TTYB_NORMAL);
 if (likely(space)) {
  struct tty_buffer *tb = port->buf.tail;
  *chars = char_buf_ptr(tb, tb->used);
  if (~tb->flags & TTYB_NORMAL)
   memset(flag_buf_ptr(tb, tb->used), TTY_NORMAL, space);
  tb->used += space;
 }
 return space;
}
