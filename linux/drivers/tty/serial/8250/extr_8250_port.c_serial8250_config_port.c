
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {scalar_t__ iotype; scalar_t__ type; } ;
struct TYPE_3__ {size_t type; } ;
struct uart_8250_port {scalar_t__ cur_iotype; TYPE_1__ port; int fcr; int bugs; } ;
struct TYPE_4__ {int fcr; } ;


 scalar_t__ PORT_16550A ;
 scalar_t__ PORT_TEGRA ;
 scalar_t__ PORT_UNKNOWN ;
 int UART_BUG_NOMSR ;
 int UART_CONFIG_IRQ ;
 int UART_CONFIG_TYPE ;
 scalar_t__ UPIO_AU ;
 int autoconfig (struct uart_8250_port*) ;
 int autoconfig_irq (struct uart_8250_port*) ;
 int register_dev_spec_attr_grp (struct uart_8250_port*) ;
 int serial8250_release_std_resource (struct uart_8250_port*) ;
 int serial8250_request_std_resource (struct uart_8250_port*) ;
 int set_io_from_upio (struct uart_port*) ;
 TYPE_2__* uart_config ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static void serial8250_config_port(struct uart_port *port, int flags)
{
 struct uart_8250_port *up = up_to_u8250p(port);
 int ret;





 ret = serial8250_request_std_resource(up);
 if (ret < 0)
  return;

 if (port->iotype != up->cur_iotype)
  set_io_from_upio(port);

 if (flags & UART_CONFIG_TYPE)
  autoconfig(up);


 if (port->type == PORT_16550A && port->iotype == UPIO_AU)
  up->bugs |= UART_BUG_NOMSR;


 if (port->type == PORT_TEGRA)
  up->bugs |= UART_BUG_NOMSR;

 if (port->type != PORT_UNKNOWN && flags & UART_CONFIG_IRQ)
  autoconfig_irq(up);

 if (port->type == PORT_UNKNOWN)
  serial8250_release_std_resource(up);

 register_dev_spec_attr_grp(up);
 up->fcr = uart_config[up->port.type].fcr;
}
