
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int iotype; unsigned long long iobase; int uartclk; int irq; int name; scalar_t__ dev; scalar_t__ mapbase; int hub6; } ;
struct uart_driver {int dummy; } ;
typedef int address ;
 char* dev_name (scalar_t__) ;
 int pr_info (char*,char*,char*,int ,char*,int ,int,int ) ;
 int snprintf (char*,int,char*,unsigned long long,...) ;
 int strlcpy (char*,char*,int) ;
 int uart_type (struct uart_port*) ;

__attribute__((used)) static inline void
uart_report_port(struct uart_driver *drv, struct uart_port *port)
{
 char address[64];

 switch (port->iotype) {
 case 129:
  snprintf(address, sizeof(address), "I/O 0x%lx", port->iobase);
  break;
 case 134:
  snprintf(address, sizeof(address),
    "I/O 0x%lx offset 0x%x", port->iobase, port->hub6);
  break;
 case 133:
 case 132:
 case 131:
 case 130:
 case 135:
 case 128:
  snprintf(address, sizeof(address),
    "MMIO 0x%llx", (unsigned long long)port->mapbase);
  break;
 default:
  strlcpy(address, "*unknown*", sizeof(address));
  break;
 }

 pr_info("%s%s%s at %s (irq = %d, base_baud = %d) is a %s\n",
        port->dev ? dev_name(port->dev) : "",
        port->dev ? ": " : "",
        port->name,
        address, port->irq, port->uartclk / 16, uart_type(port));
}
