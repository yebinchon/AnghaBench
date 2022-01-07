
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iotype; int iobase; int membase; } ;
struct uart_txx9_port {TYPE_1__ port; } ;



 unsigned int __raw_readl (int ) ;
 unsigned int inl (int ) ;

__attribute__((used)) static inline unsigned int sio_in(struct uart_txx9_port *up, int offset)
{
 switch (up->port.iotype) {
 default:
  return __raw_readl(up->port.membase + offset);
 case 128:
  return inl(up->port.iobase + offset);
 }
}
