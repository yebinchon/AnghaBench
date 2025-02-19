
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uart_port {scalar_t__ membase; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static void stm32_clr_bits(struct uart_port *port, u32 reg, u32 bits)
{
 u32 val;

 val = readl_relaxed(port->membase + reg);
 val &= ~bits;
 writel_relaxed(val, port->membase + reg);
}
