
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {scalar_t__ membase; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void owl_uart_write(struct uart_port *port, u32 val, unsigned int off)
{
 writel(val, port->membase + off);
}
