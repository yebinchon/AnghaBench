
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; scalar_t__ membase; int private_data; } ;
struct dw8250_data {int uart_16550_compatible; } ;


 int UART_LCR ;
 int dw8250_check_lcr (struct uart_port*,int) ;
 struct dw8250_data* to_dw8250_data (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void dw8250_serial_out32(struct uart_port *p, int offset, int value)
{
 struct dw8250_data *d = to_dw8250_data(p->private_data);

 writel(value, p->membase + (offset << p->regshift));

 if (offset == UART_LCR && !d->uart_16550_compatible)
  dw8250_check_lcr(p, value);
}
