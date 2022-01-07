
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; scalar_t__ delay_rts_before_send; } ;
struct uart_port {TYPE_1__ rs485; } ;
struct uart_omap_port {int dev; int rts_gpio; int scr; } ;


 int OMAP_UART_SCR_TX_EMPTY ;
 int SER_RS485_ENABLED ;
 int SER_RS485_RTS_ON_SEND ;
 int SER_RS485_RX_DURING_TX ;
 int UART_OMAP_SCR ;
 int gpio_get_value (int ) ;
 int gpio_set_value (int ,int) ;
 int mdelay (scalar_t__) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int serial_omap_enable_ier_thri (struct uart_omap_port*) ;
 int serial_omap_stop_rx (struct uart_port*) ;
 int serial_out (struct uart_omap_port*,int ,int ) ;
 struct uart_omap_port* to_uart_omap_port (struct uart_port*) ;

__attribute__((used)) static void serial_omap_start_tx(struct uart_port *port)
{
 struct uart_omap_port *up = to_uart_omap_port(port);
 int res;

 pm_runtime_get_sync(up->dev);


 if (port->rs485.flags & SER_RS485_ENABLED) {

  up->scr &= ~OMAP_UART_SCR_TX_EMPTY;
  serial_out(up, UART_OMAP_SCR, up->scr);


  res = (port->rs485.flags & SER_RS485_RTS_ON_SEND) ? 1 : 0;
  if (gpio_get_value(up->rts_gpio) != res) {
   gpio_set_value(up->rts_gpio, res);
   if (port->rs485.delay_rts_before_send > 0)
    mdelay(port->rs485.delay_rts_before_send);
  }
 }

 if ((port->rs485.flags & SER_RS485_ENABLED) &&
     !(port->rs485.flags & SER_RS485_RX_DURING_TX))
  serial_omap_stop_rx(port);

 serial_omap_enable_ier_thri(up);
 pm_runtime_mark_last_busy(up->dev);
 pm_runtime_put_autosuspend(up->dev);
}
