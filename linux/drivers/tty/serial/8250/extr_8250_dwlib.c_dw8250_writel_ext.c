
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {scalar_t__ iotype; scalar_t__ membase; } ;


 scalar_t__ UPIO_MEM32BE ;
 int iowrite32be (int ,scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void dw8250_writel_ext(struct uart_port *p, int offset, u32 reg)
{
 if (p->iotype == UPIO_MEM32BE)
  iowrite32be(reg, p->membase + offset);
 else
  writel(reg, p->membase + offset);
}
