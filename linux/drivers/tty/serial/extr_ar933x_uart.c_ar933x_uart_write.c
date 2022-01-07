
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ membase; } ;
struct ar933x_uart_port {TYPE_1__ port; } ;


 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void ar933x_uart_write(struct ar933x_uart_port *up,
         int offset, unsigned int value)
{
 writel(value, up->port.membase + offset);
}
