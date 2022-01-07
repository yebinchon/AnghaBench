
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int dummy; } ;


 int __tty_buffer_request_room (struct tty_port*,size_t,int ) ;

int tty_buffer_request_room(struct tty_port *port, size_t size)
{
 return __tty_buffer_request_room(port, size, 0);
}
