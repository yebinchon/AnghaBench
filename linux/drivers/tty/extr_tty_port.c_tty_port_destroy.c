
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int dummy; } ;


 int tty_buffer_cancel_work (struct tty_port*) ;
 int tty_buffer_free_all (struct tty_port*) ;

void tty_port_destroy(struct tty_port *port)
{
 tty_buffer_cancel_work(port);
 tty_buffer_free_all(port);
}
