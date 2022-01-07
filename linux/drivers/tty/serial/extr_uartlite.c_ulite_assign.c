
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct uartlite_data {int dummy; } ;
struct uart_port {scalar_t__ mapbase; int fifosize; int regshift; int iobase; int irq; int line; struct uartlite_data* private_data; int type; struct device* dev; int flags; int * ops; int * membase; int iotype; int lock; } ;
struct device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* cons; } ;
struct TYPE_4__ {int index; } ;


 int EBUSY ;
 int EINVAL ;
 int PORT_UNKNOWN ;
 int ULITE_NAME ;
 int ULITE_NR_UARTS ;
 int UPF_BOOT_AUTOCONF ;
 int UPIO_MEM ;
 struct uart_port* console_port ;
 int dev_err (struct device*,char*,int,...) ;
 int dev_set_drvdata (struct device*,struct uart_port*) ;
 int spin_lock_init (int *) ;
 int uart_add_one_port (TYPE_2__*,struct uart_port*) ;
 int ulite_ops ;
 struct uart_port* ulite_ports ;
 TYPE_2__ ulite_uart_driver ;

__attribute__((used)) static int ulite_assign(struct device *dev, int id, u32 base, int irq,
   struct uartlite_data *pdata)
{
 struct uart_port *port;
 int rc;


 if (id < 0) {
  for (id = 0; id < ULITE_NR_UARTS; id++)
   if (ulite_ports[id].mapbase == 0)
    break;
 }
 if (id < 0 || id >= ULITE_NR_UARTS) {
  dev_err(dev, "%s%i too large\n", ULITE_NAME, id);
  return -EINVAL;
 }

 if ((ulite_ports[id].mapbase) && (ulite_ports[id].mapbase != base)) {
  dev_err(dev, "cannot assign to %s%i; it is already in use\n",
   ULITE_NAME, id);
  return -EBUSY;
 }

 port = &ulite_ports[id];

 spin_lock_init(&port->lock);
 port->fifosize = 16;
 port->regshift = 2;
 port->iotype = UPIO_MEM;
 port->iobase = 1;
 port->mapbase = base;
 port->membase = ((void*)0);
 port->ops = &ulite_ops;
 port->irq = irq;
 port->flags = UPF_BOOT_AUTOCONF;
 port->dev = dev;
 port->type = PORT_UNKNOWN;
 port->line = id;
 port->private_data = pdata;

 dev_set_drvdata(dev, port);
 rc = uart_add_one_port(&ulite_uart_driver, port);
 if (rc) {
  dev_err(dev, "uart_add_one_port() failed; err=%i\n", rc);
  port->mapbase = 0;
  dev_set_drvdata(dev, ((void*)0));
  return rc;
 }







 return 0;
}
