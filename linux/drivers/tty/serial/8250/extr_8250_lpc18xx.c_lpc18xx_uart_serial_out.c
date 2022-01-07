
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; scalar_t__ membase; } ;


 int UART_FCR ;
 int UART_FCR_DMA_SELECT ;
 int UART_FCR_ENABLE_FIFO ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void lpc18xx_uart_serial_out(struct uart_port *p, int offset, int value)
{





 if (offset == UART_FCR && (value & UART_FCR_ENABLE_FIFO))
  value |= UART_FCR_DMA_SELECT;

 offset = offset << p->regshift;
 writel(value, p->membase + offset);
}
