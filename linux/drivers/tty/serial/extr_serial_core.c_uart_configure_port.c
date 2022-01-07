
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_state {int dummy; } ;
struct uart_port {int flags; scalar_t__ type; int mctrl; TYPE_2__* cons; int lock; TYPE_1__* ops; int membase; int mapbase; int iobase; } ;
struct uart_driver {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int (* set_mctrl ) (struct uart_port*,int) ;int (* config_port ) (struct uart_port*,unsigned int) ;} ;


 int CON_ENABLED ;
 scalar_t__ PORT_UNKNOWN ;
 int TIOCM_DTR ;
 unsigned int UART_CONFIG_IRQ ;
 unsigned int UART_CONFIG_TYPE ;
 int UART_PM_STATE_OFF ;
 int UART_PM_STATE_ON ;
 int UPF_AUTO_IRQ ;
 int UPF_BOOT_AUTOCONF ;
 int UPF_FIXED_TYPE ;
 int register_console (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct uart_port*,unsigned int) ;
 int stub2 (struct uart_port*,int) ;
 int uart_change_pm (struct uart_state*,int ) ;
 int uart_console (struct uart_port*) ;
 int uart_report_port (struct uart_driver*,struct uart_port*) ;

__attribute__((used)) static void
uart_configure_port(struct uart_driver *drv, struct uart_state *state,
      struct uart_port *port)
{
 unsigned int flags;




 if (!port->iobase && !port->mapbase && !port->membase)
  return;





 flags = 0;
 if (port->flags & UPF_AUTO_IRQ)
  flags |= UART_CONFIG_IRQ;
 if (port->flags & UPF_BOOT_AUTOCONF) {
  if (!(port->flags & UPF_FIXED_TYPE)) {
   port->type = PORT_UNKNOWN;
   flags |= UART_CONFIG_TYPE;
  }
  port->ops->config_port(port, flags);
 }

 if (port->type != PORT_UNKNOWN) {
  unsigned long flags;

  uart_report_port(drv, port);


  uart_change_pm(state, UART_PM_STATE_ON);






  spin_lock_irqsave(&port->lock, flags);
  port->ops->set_mctrl(port, port->mctrl & TIOCM_DTR);
  spin_unlock_irqrestore(&port->lock, flags);






  if (port->cons && !(port->cons->flags & CON_ENABLED))
   register_console(port->cons);





  if (!uart_console(port))
   uart_change_pm(state, UART_PM_STATE_OFF);
 }
}
