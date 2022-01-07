
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct uart_port {scalar_t__ membase; } ;


 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 __ssp_early_readl(struct uart_port *port, u16 offs)
{
 return readl_relaxed(port->membase + offs);
}
