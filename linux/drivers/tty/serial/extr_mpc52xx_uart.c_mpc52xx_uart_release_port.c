
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int flags; int mapbase; int * membase; } ;
struct mpc52xx_psc {int dummy; } ;
struct TYPE_2__ {int (* clock_relse ) (struct uart_port*) ;} ;


 int UPF_IOREMAP ;
 int iounmap (int *) ;
 TYPE_1__* psc_ops ;
 int release_mem_region (int ,int) ;
 int stub1 (struct uart_port*) ;

__attribute__((used)) static void
mpc52xx_uart_release_port(struct uart_port *port)
{
 if (psc_ops->clock_relse)
  psc_ops->clock_relse(port);


 if (port->flags & UPF_IOREMAP) {
  iounmap(port->membase);
  port->membase = ((void*)0);
 }

 release_mem_region(port->mapbase, sizeof(struct mpc52xx_psc));
}
