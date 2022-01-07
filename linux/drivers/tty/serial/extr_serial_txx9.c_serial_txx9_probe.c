
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ uartclk; int irq; scalar_t__ mapbase; int iobase; int * dev; int flags; int iotype; int membase; } ;
struct platform_device {int dev; } ;


 int dev_err (int *,char*,int,int ,unsigned long long,int ,int) ;
 struct uart_port* dev_get_platdata (int *) ;
 int memset (struct uart_port*,int ,int) ;
 int serial_txx9_register_port (struct uart_port*) ;

__attribute__((used)) static int serial_txx9_probe(struct platform_device *dev)
{
 struct uart_port *p = dev_get_platdata(&dev->dev);
 struct uart_port port;
 int ret, i;

 memset(&port, 0, sizeof(struct uart_port));
 for (i = 0; p && p->uartclk != 0; p++, i++) {
  port.iobase = p->iobase;
  port.membase = p->membase;
  port.irq = p->irq;
  port.uartclk = p->uartclk;
  port.iotype = p->iotype;
  port.flags = p->flags;
  port.mapbase = p->mapbase;
  port.dev = &dev->dev;
  ret = serial_txx9_register_port(&port);
  if (ret < 0) {
   dev_err(&dev->dev, "unable to register port at index %d "
    "(IO%lx MEM%llx IRQ%d): %d\n", i,
    p->iobase, (unsigned long long)p->mapbase,
    p->irq, ret);
  }
 }
 return 0;
}
