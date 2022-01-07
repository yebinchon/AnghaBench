
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eg20t_port {scalar_t__ membase; } ;


 scalar_t__ UART_LSR ;
 int ioread8 (scalar_t__) ;

__attribute__((used)) static u8 pch_uart_hal_get_line_status(struct eg20t_port *priv)
{
 return ioread8(priv->membase + UART_LSR);
}
