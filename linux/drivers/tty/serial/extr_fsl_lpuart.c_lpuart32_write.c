
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uart_port {int iotype; scalar_t__ membase; } ;




 int iowrite32be (scalar_t__,scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void lpuart32_write(struct uart_port *port, u32 val,
      u32 off)
{
 switch (port->iotype) {
 case 129:
  writel(val, port->membase + off);
  break;
 case 128:
  iowrite32be(val, port->membase + off);
  break;
 }
}
