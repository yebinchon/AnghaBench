
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; int iotype; int (* serial_out ) (struct uart_port*,int,int) ;int iobase; int membase; } ;
 int iowrite32be (int,int ) ;
 int outb (int,int ) ;
 int stub1 (struct uart_port*,int,int) ;
 int writeb (int,int ) ;
 int writel (int,int ) ;
 int writew (int,int ) ;

__attribute__((used)) static void serial8250_early_out(struct uart_port *port, int offset, int value)
{
 int reg_offset = offset;
 offset <<= port->regshift;

 switch (port->iotype) {
 case 132:
  writeb(value, port->membase + offset);
  break;
 case 131:
  writew(value, port->membase + offset);
  break;
 case 130:
  writel(value, port->membase + offset);
  break;
 case 129:
  iowrite32be(value, port->membase + offset);
  break;
 case 128:
  outb(value, port->iobase + offset);
  break;
 case 133:
  port->serial_out(port, reg_offset, value);
  break;
 }
}
