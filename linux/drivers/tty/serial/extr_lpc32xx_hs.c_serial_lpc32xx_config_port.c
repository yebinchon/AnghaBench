
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int fifosize; int membase; int type; } ;


 int LPC32XX_HSUART_CTRL (int ) ;
 int LPC32XX_HSUART_IIR (int ) ;
 int LPC32XX_HSUART_RATE (int ) ;
 int LPC32XX_HSU_BRK_INT ;
 int LPC32XX_HSU_FE_INT ;
 int LPC32XX_HSU_OFFSET (int) ;
 int LPC32XX_HSU_RX_OE_INT ;
 int LPC32XX_HSU_RX_TL32B ;
 int LPC32XX_HSU_TMO_INACT_4B ;
 int LPC32XX_HSU_TX_INT ;
 int LPC32XX_HSU_TX_TL8B ;
 int PORT_UART00 ;
 int __serial_uart_flush (struct uart_port*) ;
 int serial_lpc32xx_request_port (struct uart_port*) ;
 int writel (int,int ) ;

__attribute__((used)) static void serial_lpc32xx_config_port(struct uart_port *port, int uflags)
{
 int ret;

 ret = serial_lpc32xx_request_port(port);
 if (ret < 0)
  return;
 port->type = PORT_UART00;
 port->fifosize = 64;

 __serial_uart_flush(port);

 writel((LPC32XX_HSU_TX_INT | LPC32XX_HSU_FE_INT |
  LPC32XX_HSU_BRK_INT | LPC32XX_HSU_RX_OE_INT),
        LPC32XX_HSUART_IIR(port->membase));

 writel(0xFF, LPC32XX_HSUART_RATE(port->membase));



 writel(LPC32XX_HSU_TX_TL8B | LPC32XX_HSU_RX_TL32B |
        LPC32XX_HSU_OFFSET(20) | LPC32XX_HSU_TMO_INACT_4B,
        LPC32XX_HSUART_CTRL(port->membase));
}
