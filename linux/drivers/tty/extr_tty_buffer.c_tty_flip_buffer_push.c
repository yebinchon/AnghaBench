
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int dummy; } ;


 int tty_schedule_flip (struct tty_port*) ;

void tty_flip_buffer_push(struct tty_port *port)
{
 tty_schedule_flip(port);
}
