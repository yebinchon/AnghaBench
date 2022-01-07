
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int line; int dev; } ;
struct uart_omap_port {TYPE_1__ port; int dev; } ;


 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_RNG ;
 unsigned int UART_MSR_CTS ;
 unsigned int UART_MSR_DCD ;
 unsigned int UART_MSR_DSR ;
 unsigned int UART_MSR_RI ;
 unsigned int check_modem_status (struct uart_omap_port*) ;
 int dev_dbg (int ,char*,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 struct uart_omap_port* to_uart_omap_port (struct uart_port*) ;

__attribute__((used)) static unsigned int serial_omap_get_mctrl(struct uart_port *port)
{
 struct uart_omap_port *up = to_uart_omap_port(port);
 unsigned int status;
 unsigned int ret = 0;

 pm_runtime_get_sync(up->dev);
 status = check_modem_status(up);
 pm_runtime_mark_last_busy(up->dev);
 pm_runtime_put_autosuspend(up->dev);

 dev_dbg(up->port.dev, "serial_omap_get_mctrl+%d\n", up->port.line);

 if (status & UART_MSR_DCD)
  ret |= TIOCM_CAR;
 if (status & UART_MSR_RI)
  ret |= TIOCM_RNG;
 if (status & UART_MSR_DSR)
  ret |= TIOCM_DSR;
 if (status & UART_MSR_CTS)
  ret |= TIOCM_CTS;
 return ret;
}
