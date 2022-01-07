
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_port {int dev; } ;
struct uart_8250_port {int dummy; } ;


 int UART_EFR ;
 int UART_EFR_ECB ;
 int UART_IER ;
 int UART_IERX_SLEEP ;
 int UART_LCR ;
 int UART_LCR_CONF_MODE_B ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int serial_in (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,int) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static void omap_8250_pm(struct uart_port *port, unsigned int state,
    unsigned int oldstate)
{
 struct uart_8250_port *up = up_to_u8250p(port);
 u8 efr;

 pm_runtime_get_sync(port->dev);
 serial_out(up, UART_LCR, UART_LCR_CONF_MODE_B);
 efr = serial_in(up, UART_EFR);
 serial_out(up, UART_EFR, efr | UART_EFR_ECB);
 serial_out(up, UART_LCR, 0);

 serial_out(up, UART_IER, (state != 0) ? UART_IERX_SLEEP : 0);
 serial_out(up, UART_LCR, UART_LCR_CONF_MODE_B);
 serial_out(up, UART_EFR, efr);
 serial_out(up, UART_LCR, 0);

 pm_runtime_mark_last_busy(port->dev);
 pm_runtime_put_autosuspend(port->dev);
}
