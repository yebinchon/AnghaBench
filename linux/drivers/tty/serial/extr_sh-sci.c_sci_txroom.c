
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int fifosize; } ;


 int sci_txfill (struct uart_port*) ;

__attribute__((used)) static int sci_txroom(struct uart_port *port)
{
 return port->fifosize - sci_txfill(port);
}
