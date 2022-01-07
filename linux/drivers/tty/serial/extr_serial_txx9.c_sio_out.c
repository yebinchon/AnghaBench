
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iotype; int iobase; int membase; } ;
struct uart_txx9_port {TYPE_1__ port; } ;



 int __raw_writel (int,int ) ;
 int outl (int,int ) ;

__attribute__((used)) static inline void
sio_out(struct uart_txx9_port *up, int offset, int value)
{
 switch (up->port.iotype) {
 default:
  __raw_writel(value, up->port.membase + offset);
  break;
 case 128:
  outl(value, up->port.iobase + offset);
  break;
 }
}
