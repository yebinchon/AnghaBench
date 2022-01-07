
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ membase; } ;
struct uart_8250_port {TYPE_1__ port; } ;


 scalar_t__ UNIPHIER_UART_DLR ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void uniphier_serial_dl_write(struct uart_8250_port *up, int value)
{
 writel(value, up->port.membase + UNIPHIER_UART_DLR);
}
