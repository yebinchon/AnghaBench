
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {TYPE_1__* client_ops; } ;
struct tty_buffer {int flags; int read; } ;
struct TYPE_2__ {int (* receive_buf ) (struct tty_port*,unsigned char*,char*,int) ;} ;


 int TTYB_NORMAL ;
 unsigned char* char_buf_ptr (struct tty_buffer*,int ) ;
 char* flag_buf_ptr (struct tty_buffer*,int ) ;
 int memset (unsigned char*,int ,int) ;
 int stub1 (struct tty_port*,unsigned char*,char*,int) ;

__attribute__((used)) static int
receive_buf(struct tty_port *port, struct tty_buffer *head, int count)
{
 unsigned char *p = char_buf_ptr(head, head->read);
 char *f = ((void*)0);
 int n;

 if (~head->flags & TTYB_NORMAL)
  f = flag_buf_ptr(head, head->read);

 n = port->client_ops->receive_buf(port, p, f, count);
 if (n > 0)
  memset(p, 0, n);
 return n;
}
