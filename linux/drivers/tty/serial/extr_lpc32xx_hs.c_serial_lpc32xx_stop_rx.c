
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int membase; } ;


 int LPC32XX_HSUART_CTRL (int ) ;
 int LPC32XX_HSUART_IIR (int ) ;
 int LPC32XX_HSU_BRK_INT ;
 int LPC32XX_HSU_ERR_INT_EN ;
 int LPC32XX_HSU_FE_INT ;
 int LPC32XX_HSU_RX_INT_EN ;
 int LPC32XX_HSU_RX_OE_INT ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void serial_lpc32xx_stop_rx(struct uart_port *port)
{
 u32 tmp;

 tmp = readl(LPC32XX_HSUART_CTRL(port->membase));
 tmp &= ~(LPC32XX_HSU_RX_INT_EN | LPC32XX_HSU_ERR_INT_EN);
 writel(tmp, LPC32XX_HSUART_CTRL(port->membase));

 writel((LPC32XX_HSU_BRK_INT | LPC32XX_HSU_RX_OE_INT |
  LPC32XX_HSU_FE_INT), LPC32XX_HSUART_IIR(port->membase));
}
