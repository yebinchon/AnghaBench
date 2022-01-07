
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int flags; int mapbase; int * membase; TYPE_1__* dev; } ;
struct sci_port {int reg_size; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;


 int UPF_IOREMAP ;
 int iounmap (int *) ;
 int release_mem_region (int ,int ) ;
 struct sci_port* to_sci_port (struct uart_port*) ;

__attribute__((used)) static void sci_release_port(struct uart_port *port)
{
 struct sci_port *sport = to_sci_port(port);

 if (port->dev->of_node || (port->flags & UPF_IOREMAP)) {
  iounmap(port->membase);
  port->membase = ((void*)0);
 }

 release_mem_region(port->mapbase, sport->reg_size);
}
