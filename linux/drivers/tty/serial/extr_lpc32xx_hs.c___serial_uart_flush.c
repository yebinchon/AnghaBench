
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uart_port {int membase; } ;


 int FIFO_READ_LIMIT ;
 int LPC32XX_HSUART_FIFO (int ) ;
 int LPC32XX_HSUART_LEVEL (int ) ;
 scalar_t__ readl (int ) ;

__attribute__((used)) static void __serial_uart_flush(struct uart_port *port)
{
 u32 tmp;
 int cnt = 0;

 while ((readl(LPC32XX_HSUART_LEVEL(port->membase)) > 0) &&
        (cnt++ < FIFO_READ_LIMIT))
  tmp = readl(LPC32XX_HSUART_FIFO(port->membase));
}
