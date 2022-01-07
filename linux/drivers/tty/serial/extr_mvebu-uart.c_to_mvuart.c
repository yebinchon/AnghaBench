
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ private_data; } ;
struct mvebu_uart {int dummy; } ;



__attribute__((used)) static struct mvebu_uart *to_mvuart(struct uart_port *port)
{
 return (struct mvebu_uart *)port->private_data;
}
