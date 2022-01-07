
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int * membase; } ;
struct men_z135_port {int mem; } ;


 int iounmap (int *) ;
 int mcb_release_mem (int ) ;
 struct men_z135_port* to_men_z135 (struct uart_port*) ;

__attribute__((used)) static void men_z135_release_port(struct uart_port *port)
{
 struct men_z135_port *uart = to_men_z135(port);

 iounmap(port->membase);
 port->membase = ((void*)0);

 mcb_release_mem(uart->mem);
}
