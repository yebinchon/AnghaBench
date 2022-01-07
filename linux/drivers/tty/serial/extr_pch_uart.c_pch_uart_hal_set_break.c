
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eg20t_port {scalar_t__ membase; } ;


 unsigned int PCH_UART_LCR_SB ;
 scalar_t__ UART_LCR ;
 unsigned int ioread8 (scalar_t__) ;
 int iowrite8 (unsigned int,scalar_t__) ;

__attribute__((used)) static void pch_uart_hal_set_break(struct eg20t_port *priv, int on)
{
 unsigned int lcr;

 lcr = ioread8(priv->membase + UART_LCR);
 if (on)
  lcr |= PCH_UART_LCR_SB;
 else
  lcr &= ~PCH_UART_LCR_SB;

 iowrite8(lcr, priv->membase + UART_LCR);
}
