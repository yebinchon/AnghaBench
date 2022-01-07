
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct eg20t_port {struct uart_port port; } ;
struct TYPE_2__ {struct tty_port port; } ;


 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_string (struct tty_port*,unsigned char const*,int) ;

__attribute__((used)) static int push_rx(struct eg20t_port *priv, const unsigned char *buf,
     int size)
{
 struct uart_port *port = &priv->port;
 struct tty_port *tport = &port->state->port;

 tty_insert_flip_string(tport, buf, size);
 tty_flip_buffer_push(tport);

 return 0;
}
