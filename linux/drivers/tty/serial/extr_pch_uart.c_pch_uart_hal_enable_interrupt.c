
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct eg20t_port {scalar_t__ membase; } ;


 unsigned int PCH_UART_IER_MASK ;
 scalar_t__ UART_IER ;
 unsigned int ioread8 (scalar_t__) ;
 int iowrite8 (unsigned int,scalar_t__) ;

__attribute__((used)) static void pch_uart_hal_enable_interrupt(struct eg20t_port *priv,
       unsigned int flag)
{
 u8 ier = ioread8(priv->membase + UART_IER);
 ier |= flag & PCH_UART_IER_MASK;
 iowrite8(ier, priv->membase + UART_IER);
}
