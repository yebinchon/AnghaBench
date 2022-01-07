
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uart_port {scalar_t__ membase; } ;


 scalar_t__ readl (scalar_t__) ;
 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 asc_in(struct uart_port *port, u32 offset)
{



 return readl(port->membase + offset);

}
