
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_2__ {int uartclk; int flags; int * membase; int mapbase; int type; struct device* dev; scalar_t__ line; void* iotype; int irq; int * ops; int fifosize; } ;
struct men_z135_port {unsigned char* rxbuf; TYPE_1__ port; int lock; struct mcb_device* mdev; } ;
struct mcb_device_id {int dummy; } ;
struct device {int dummy; } ;
struct mcb_device {struct resource mem; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MEN_Z135_BASECLK ;
 int MEN_Z135_FIFO_SIZE ;
 int PORT_MEN_Z135 ;
 int UPF_BOOT_AUTOCONF ;
 int UPF_IOREMAP ;
 void* UPIO_MEM ;
 scalar_t__ __get_free_page (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct men_z135_port* devm_kzalloc (struct device*,int,int ) ;
 int free_page (unsigned long) ;
 int line ;
 int mcb_get_irq (struct mcb_device*) ;
 int mcb_set_drvdata (struct mcb_device*,struct men_z135_port*) ;
 int men_z135_driver ;
 int men_z135_ops ;
 int spin_lock_init (int *) ;
 int uart_add_one_port (int *,TYPE_1__*) ;

__attribute__((used)) static int men_z135_probe(struct mcb_device *mdev,
   const struct mcb_device_id *id)
{
 struct men_z135_port *uart;
 struct resource *mem;
 struct device *dev;
 int err;

 dev = &mdev->dev;

 uart = devm_kzalloc(dev, sizeof(struct men_z135_port), GFP_KERNEL);
 if (!uart)
  return -ENOMEM;

 uart->rxbuf = (unsigned char *)__get_free_page(GFP_KERNEL);
 if (!uart->rxbuf)
  return -ENOMEM;

 mem = &mdev->mem;

 mcb_set_drvdata(mdev, uart);

 uart->port.uartclk = MEN_Z135_BASECLK * 16;
 uart->port.fifosize = MEN_Z135_FIFO_SIZE;
 uart->port.iotype = UPIO_MEM;
 uart->port.ops = &men_z135_ops;
 uart->port.irq = mcb_get_irq(mdev);
 uart->port.iotype = UPIO_MEM;
 uart->port.flags = UPF_BOOT_AUTOCONF | UPF_IOREMAP;
 uart->port.line = line++;
 uart->port.dev = dev;
 uart->port.type = PORT_MEN_Z135;
 uart->port.mapbase = mem->start;
 uart->port.membase = ((void*)0);
 uart->mdev = mdev;

 spin_lock_init(&uart->lock);

 err = uart_add_one_port(&men_z135_driver, &uart->port);
 if (err)
  goto err;

 return 0;

err:
 free_page((unsigned long) uart->rxbuf);
 dev_err(dev, "Failed to add UART: %d\n", err);

 return err;
}
