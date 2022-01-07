
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapsize; int mapbase; int dev; int * membase; } ;


 int devm_iounmap (int ,int *) ;
 int devm_release_mem_region (int ,int ,int ) ;

__attribute__((used)) static void meson_uart_release_port(struct uart_port *port)
{
 devm_iounmap(port->dev, port->membase);
 port->membase = ((void*)0);
 devm_release_mem_region(port->dev, port->mapbase, port->mapsize);
}
