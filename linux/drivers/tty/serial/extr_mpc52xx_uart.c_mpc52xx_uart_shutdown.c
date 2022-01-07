
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int irq; scalar_t__ read_status_mask; } ;
struct TYPE_2__ {int (* cw_disable_ints ) (struct uart_port*) ;int (* clock ) (struct uart_port*,int ) ;int (* set_imr ) (struct uart_port*,scalar_t__) ;int (* command ) (struct uart_port*,int ) ;} ;


 int MPC52xx_PSC_RST_RX ;
 int MPC52xx_PSC_RST_TX ;
 int free_irq (int ,struct uart_port*) ;
 TYPE_1__* psc_ops ;
 int stub1 (struct uart_port*,int ) ;
 int stub2 (struct uart_port*,int ) ;
 int stub3 (struct uart_port*,scalar_t__) ;
 int stub4 (struct uart_port*,int ) ;
 int stub5 (struct uart_port*) ;
 int uart_console (struct uart_port*) ;

__attribute__((used)) static void
mpc52xx_uart_shutdown(struct uart_port *port)
{

 psc_ops->command(port, MPC52xx_PSC_RST_RX);
 if (!uart_console(port))
  psc_ops->command(port, MPC52xx_PSC_RST_TX);

 port->read_status_mask = 0;
 psc_ops->set_imr(port, port->read_status_mask);

 if (psc_ops->clock)
  psc_ops->clock(port, 0);


 psc_ops->cw_disable_ints(port);


 free_irq(port->irq, port);
}
