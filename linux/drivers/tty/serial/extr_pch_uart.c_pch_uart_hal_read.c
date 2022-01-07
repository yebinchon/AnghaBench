
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int brk; } ;
struct uart_port {scalar_t__ sysrq; TYPE_1__ icount; } ;
struct eg20t_port {scalar_t__ membase; struct uart_port port; } ;


 scalar_t__ PCH_UART_RBR ;
 scalar_t__ UART_LSR ;
 int UART_LSR_BI ;
 int UART_LSR_DR ;
 int ioread8 (scalar_t__) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,int) ;

__attribute__((used)) static int pch_uart_hal_read(struct eg20t_port *priv, unsigned char *buf,
        int rx_size)
{
 int i;
 u8 rbr, lsr;
 struct uart_port *port = &priv->port;

 lsr = ioread8(priv->membase + UART_LSR);
 for (i = 0, lsr = ioread8(priv->membase + UART_LSR);
      i < rx_size && lsr & (UART_LSR_DR | UART_LSR_BI);
      lsr = ioread8(priv->membase + UART_LSR)) {
  rbr = ioread8(priv->membase + PCH_UART_RBR);

  if (lsr & UART_LSR_BI) {
   port->icount.brk++;
   if (uart_handle_break(port))
    continue;
  }







  buf[i++] = rbr;
 }
 return i;
}
