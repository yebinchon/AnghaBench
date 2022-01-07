
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ membase; } ;
struct uart_8250_port {TYPE_1__ port; } ;


 scalar_t__ UNIPHIER_UART_DLR ;
 int readl (scalar_t__) ;

__attribute__((used)) static int uniphier_serial_dl_read(struct uart_8250_port *up)
{
 return readl(up->port.membase + UNIPHIER_UART_DLR);
}
