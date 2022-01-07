
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ delay_rts_after_send; } ;
struct uart_port {TYPE_1__ rs485; } ;
struct TYPE_4__ {int read_status_mask; } ;
struct uart_omap_port {int scr; int ier; int fcr; int dev; TYPE_2__ port; int rts_gpio; } ;


 int OMAP_UART_SCR_TX_EMPTY ;
 int SER_RS485_ENABLED ;
 int SER_RS485_RTS_AFTER_SEND ;
 int SER_RS485_RX_DURING_TX ;
 int UART_FCR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_IER ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 int UART_IER_THRI ;
 int UART_LSR_DR ;
 int UART_OMAP_SCR ;
 int gpio_get_value (int ) ;
 int gpio_set_value (int ,int) ;
 int mdelay (scalar_t__) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int serial_out (struct uart_omap_port*,int ,int) ;
 struct uart_omap_port* to_uart_omap_port (struct uart_port*) ;

__attribute__((used)) static void serial_omap_stop_tx(struct uart_port *port)
{
 struct uart_omap_port *up = to_uart_omap_port(port);
 int res;

 pm_runtime_get_sync(up->dev);


 if (port->rs485.flags & SER_RS485_ENABLED) {
  if (up->scr & OMAP_UART_SCR_TX_EMPTY) {







   up->scr &= ~OMAP_UART_SCR_TX_EMPTY;
   serial_out(up, UART_OMAP_SCR, up->scr);
   res = (port->rs485.flags & SER_RS485_RTS_AFTER_SEND) ?
    1 : 0;
   if (gpio_get_value(up->rts_gpio) != res) {
    if (port->rs485.delay_rts_after_send > 0)
     mdelay(
     port->rs485.delay_rts_after_send);
    gpio_set_value(up->rts_gpio, res);
   }
  } else {
   up->scr |= OMAP_UART_SCR_TX_EMPTY;
   serial_out(up, UART_OMAP_SCR, up->scr);
   return;
  }
 }

 if (up->ier & UART_IER_THRI) {
  up->ier &= ~UART_IER_THRI;
  serial_out(up, UART_IER, up->ier);
 }

 if ((port->rs485.flags & SER_RS485_ENABLED) &&
     !(port->rs485.flags & SER_RS485_RX_DURING_TX)) {




  serial_out(up, UART_FCR, up->fcr | UART_FCR_CLEAR_RCVR);

  up->ier |= UART_IER_RLSI | UART_IER_RDI;
  up->port.read_status_mask |= UART_LSR_DR;
  serial_out(up, UART_IER, up->ier);
 }

 pm_runtime_mark_last_busy(up->dev);
 pm_runtime_put_autosuspend(up->dev);
}
