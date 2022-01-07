
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {scalar_t__ iotype; scalar_t__ membase; } ;


 scalar_t__ UPIO_MEM32BE ;
 int ioread32be (scalar_t__) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 dw8250_readl_ext(struct uart_port *p, int offset)
{
 if (p->iotype == UPIO_MEM32BE)
  return ioread32be(p->membase + offset);
 return readl(p->membase + offset);
}
