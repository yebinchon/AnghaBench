
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int membase; } ;
 unsigned int readb (int ) ;
 unsigned int readl (int ) ;

__attribute__((used)) static unsigned int serial8250_em_serial_in(struct uart_port *p, int offset)
{
 switch (offset) {
 case 129:
  return readb(p->membase);
 case 131:
 case 132:
 case 130:
 case 128:
  return readl(p->membase + ((offset + 1) << 2));
 case 134:
 case 133:
 case 136:
 case 135:
  return readl(p->membase + (offset << 2));
 }
 return 0;
}
