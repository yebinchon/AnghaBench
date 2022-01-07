
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int status; } ;
struct TYPE_2__ {int line; int dev; } ;
struct uart_omap_port {unsigned char mcr; unsigned char efr; int dev; TYPE_1__ port; } ;


 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_LOOP ;
 unsigned int TIOCM_OUT1 ;
 unsigned int TIOCM_OUT2 ;
 unsigned int TIOCM_RTS ;
 int UART_EFR ;
 unsigned char UART_EFR_RTS ;
 int UART_LCR ;
 unsigned char UART_LCR_CONF_MODE_B ;
 int UART_MCR ;
 unsigned char UART_MCR_DTR ;
 unsigned char UART_MCR_LOOP ;
 unsigned char UART_MCR_OUT1 ;
 unsigned char UART_MCR_OUT2 ;
 unsigned char UART_MCR_RTS ;
 int UPSTAT_AUTORTS ;
 int dev_dbg (int ,char*,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 unsigned char serial_in (struct uart_omap_port*,int ) ;
 int serial_out (struct uart_omap_port*,int ,unsigned char) ;
 struct uart_omap_port* to_uart_omap_port (struct uart_port*) ;

__attribute__((used)) static void serial_omap_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct uart_omap_port *up = to_uart_omap_port(port);
 unsigned char mcr = 0, old_mcr, lcr;

 dev_dbg(up->port.dev, "serial_omap_set_mctrl+%d\n", up->port.line);
 if (mctrl & TIOCM_RTS)
  mcr |= UART_MCR_RTS;
 if (mctrl & TIOCM_DTR)
  mcr |= UART_MCR_DTR;
 if (mctrl & TIOCM_OUT1)
  mcr |= UART_MCR_OUT1;
 if (mctrl & TIOCM_OUT2)
  mcr |= UART_MCR_OUT2;
 if (mctrl & TIOCM_LOOP)
  mcr |= UART_MCR_LOOP;

 pm_runtime_get_sync(up->dev);
 old_mcr = serial_in(up, UART_MCR);
 old_mcr &= ~(UART_MCR_LOOP | UART_MCR_OUT2 | UART_MCR_OUT1 |
       UART_MCR_DTR | UART_MCR_RTS);
 up->mcr = old_mcr | mcr;
 serial_out(up, UART_MCR, up->mcr);


 lcr = serial_in(up, UART_LCR);
 serial_out(up, UART_LCR, UART_LCR_CONF_MODE_B);
 if ((mctrl & TIOCM_RTS) && (port->status & UPSTAT_AUTORTS))
  up->efr |= UART_EFR_RTS;
 else
  up->efr &= ~UART_EFR_RTS;
 serial_out(up, UART_EFR, up->efr);
 serial_out(up, UART_LCR, lcr);

 pm_runtime_mark_last_busy(up->dev);
 pm_runtime_put_autosuspend(up->dev);
}
