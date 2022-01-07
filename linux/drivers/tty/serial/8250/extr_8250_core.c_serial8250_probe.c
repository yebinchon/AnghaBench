
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uart ;
struct TYPE_2__ {int irqflags; scalar_t__ flags; int * dev; int pm; int get_mctrl; int set_ldisc; int set_termios; int handle_break; int handle_irq; int serial_out; int serial_in; int type; int private_data; int hub6; scalar_t__ mapbase; int iotype; int regshift; int uartclk; int irq; int membase; int iobase; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct platform_device {int dev; } ;
struct plat_serial8250_port {scalar_t__ flags; int irqflags; int irq; scalar_t__ mapbase; int iobase; int pm; int get_mctrl; int set_ldisc; int set_termios; int handle_break; int handle_irq; int serial_out; int serial_in; int type; int private_data; int hub6; int iotype; int regshift; int uartclk; int membase; } ;


 int IRQF_SHARED ;
 int dev_err (int *,char*,int,int ,unsigned long long,int ,int) ;
 struct plat_serial8250_port* dev_get_platdata (int *) ;
 int memset (struct uart_8250_port*,int ,int) ;
 int serial8250_register_8250_port (struct uart_8250_port*) ;
 scalar_t__ share_irqs ;

__attribute__((used)) static int serial8250_probe(struct platform_device *dev)
{
 struct plat_serial8250_port *p = dev_get_platdata(&dev->dev);
 struct uart_8250_port uart;
 int ret, i, irqflag = 0;

 memset(&uart, 0, sizeof(uart));

 if (share_irqs)
  irqflag = IRQF_SHARED;

 for (i = 0; p && p->flags != 0; p++, i++) {
  uart.port.iobase = p->iobase;
  uart.port.membase = p->membase;
  uart.port.irq = p->irq;
  uart.port.irqflags = p->irqflags;
  uart.port.uartclk = p->uartclk;
  uart.port.regshift = p->regshift;
  uart.port.iotype = p->iotype;
  uart.port.flags = p->flags;
  uart.port.mapbase = p->mapbase;
  uart.port.hub6 = p->hub6;
  uart.port.private_data = p->private_data;
  uart.port.type = p->type;
  uart.port.serial_in = p->serial_in;
  uart.port.serial_out = p->serial_out;
  uart.port.handle_irq = p->handle_irq;
  uart.port.handle_break = p->handle_break;
  uart.port.set_termios = p->set_termios;
  uart.port.set_ldisc = p->set_ldisc;
  uart.port.get_mctrl = p->get_mctrl;
  uart.port.pm = p->pm;
  uart.port.dev = &dev->dev;
  uart.port.irqflags |= irqflag;
  ret = serial8250_register_8250_port(&uart);
  if (ret < 0) {
   dev_err(&dev->dev, "unable to register port at index %d "
    "(IO%lx MEM%llx IRQ%d): %d\n", i,
    p->iobase, (unsigned long long)p->mapbase,
    p->irq, ret);
  }
 }
 return 0;
}
