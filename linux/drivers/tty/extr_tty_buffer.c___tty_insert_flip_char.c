
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct tty_buffer* tail; } ;
struct tty_port {TYPE_1__ buf; } ;
struct tty_buffer {int flags; int used; } ;


 int TTYB_NORMAL ;
 char TTY_NORMAL ;
 int __tty_buffer_request_room (struct tty_port*,int,int) ;
 unsigned char* char_buf_ptr (struct tty_buffer*,int ) ;
 char* flag_buf_ptr (struct tty_buffer*,int ) ;

int __tty_insert_flip_char(struct tty_port *port, unsigned char ch, char flag)
{
 struct tty_buffer *tb;
 int flags = (flag == TTY_NORMAL) ? TTYB_NORMAL : 0;

 if (!__tty_buffer_request_room(port, 1, flags))
  return 0;

 tb = port->buf.tail;
 if (~tb->flags & TTYB_NORMAL)
  *flag_buf_ptr(tb, tb->used) = flag;
 *char_buf_ptr(tb, tb->used++) = ch;

 return 1;
}
