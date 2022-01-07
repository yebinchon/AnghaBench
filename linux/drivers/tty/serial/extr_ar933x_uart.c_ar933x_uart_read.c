
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ membase; } ;
struct ar933x_uart_port {TYPE_1__ port; } ;


 unsigned int readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int ar933x_uart_read(struct ar933x_uart_port *up,
         int offset)
{
 return readl(up->port.membase + offset);
}
