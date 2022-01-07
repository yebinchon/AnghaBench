
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct serial_rs485 {int flags; int delay_rts_after_send; scalar_t__ delay_rts_before_send; struct serial_rs485* padding; } ;
struct uart_port {unsigned int uartclk; struct serial_rs485 rs485; } ;
struct uart_8250_port {unsigned int (* dl_read ) (struct uart_8250_port*) ;} ;


 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int LPC18XX_UART_RS485CTRL ;
 unsigned int LPC18XX_UART_RS485CTRL_DCTRL ;
 unsigned int LPC18XX_UART_RS485CTRL_NMMEN ;
 unsigned int LPC18XX_UART_RS485CTRL_OINV ;
 int LPC18XX_UART_RS485DLY ;
 unsigned int LPC18XX_UART_RS485DLY_MAX ;
 unsigned int MSEC_PER_SEC ;
 int SER_RS485_ENABLED ;
 int SER_RS485_RTS_AFTER_SEND ;
 int SER_RS485_RTS_ON_SEND ;
 int memset (struct serial_rs485*,int ,int) ;
 int serial_out (struct uart_8250_port*,int ,unsigned int) ;
 unsigned int stub1 (struct uart_8250_port*) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static int lpc18xx_rs485_config(struct uart_port *port,
    struct serial_rs485 *rs485)
{
 struct uart_8250_port *up = up_to_u8250p(port);
 u32 rs485_ctrl_reg = 0;
 u32 rs485_dly_reg = 0;
 unsigned baud_clk;

 if (rs485->flags & SER_RS485_ENABLED)
  memset(rs485->padding, 0, sizeof(rs485->padding));
 else
  memset(rs485, 0, sizeof(*rs485));

 rs485->flags &= SER_RS485_ENABLED | SER_RS485_RTS_ON_SEND |
   SER_RS485_RTS_AFTER_SEND;

 if (rs485->flags & SER_RS485_ENABLED) {
  rs485_ctrl_reg |= LPC18XX_UART_RS485CTRL_NMMEN |
      LPC18XX_UART_RS485CTRL_DCTRL;

  if (rs485->flags & SER_RS485_RTS_ON_SEND) {
   rs485_ctrl_reg |= LPC18XX_UART_RS485CTRL_OINV;
   rs485->flags &= ~SER_RS485_RTS_AFTER_SEND;
  } else {
   rs485->flags |= SER_RS485_RTS_AFTER_SEND;
  }
 }

 if (rs485->delay_rts_after_send) {
  baud_clk = port->uartclk / up->dl_read(up);
  rs485_dly_reg = DIV_ROUND_UP(rs485->delay_rts_after_send
      * baud_clk, MSEC_PER_SEC);

  if (rs485_dly_reg > LPC18XX_UART_RS485DLY_MAX)
   rs485_dly_reg = LPC18XX_UART_RS485DLY_MAX;


  rs485->delay_rts_after_send = (rs485_dly_reg * MSEC_PER_SEC)
      / baud_clk;
 }


 rs485->delay_rts_before_send = 0;

 serial_out(up, LPC18XX_UART_RS485CTRL, rs485_ctrl_reg);
 serial_out(up, LPC18XX_UART_RS485DLY, rs485_dly_reg);

 port->rs485 = *rs485;

 return 0;
}
