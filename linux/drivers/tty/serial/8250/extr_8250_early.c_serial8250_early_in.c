
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; int iotype; unsigned int (* serial_in ) (struct uart_port*,int) ;int iobase; int membase; } ;
 unsigned int inb (int ) ;
 unsigned int ioread32be (int ) ;
 unsigned int readb (int ) ;
 unsigned int readl (int ) ;
 unsigned int readw (int ) ;
 unsigned int stub1 (struct uart_port*,int) ;

__attribute__((used)) static unsigned int serial8250_early_in(struct uart_port *port, int offset)
{
 int reg_offset = offset;
 offset <<= port->regshift;

 switch (port->iotype) {
 case 132:
  return readb(port->membase + offset);
 case 131:
  return readw(port->membase + offset);
 case 130:
  return readl(port->membase + offset);
 case 129:
  return ioread32be(port->membase + offset);
 case 128:
  return inb(port->iobase + offset);
 case 133:
  return port->serial_in(port, reg_offset);
 default:
  return 0;
 }
}
