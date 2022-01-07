
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int membase; } ;


 int LPC32XX_HSUART_CTRL (int ) ;
 int LPC32XX_HSU_TX_INT_EN ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void serial_lpc32xx_stop_tx(struct uart_port *port)
{
 u32 tmp;

 tmp = readl(LPC32XX_HSUART_CTRL(port->membase));
 tmp &= ~LPC32XX_HSU_TX_INT_EN;
 writel(tmp, LPC32XX_HSUART_CTRL(port->membase));
}
