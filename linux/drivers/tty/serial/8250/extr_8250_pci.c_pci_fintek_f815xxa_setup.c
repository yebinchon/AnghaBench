
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int serial_out; scalar_t__ mapbase; int flags; int iotype; struct f815xxa_data* private_data; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct serial_private {struct pci_dev* dev; } ;
struct pciserial_board {int dummy; } ;
struct pci_dev {int dev; } ;
struct f815xxa_data {int idx; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int UPF_IOREMAP ;
 int UPIO_MEM ;
 struct f815xxa_data* devm_kzalloc (int *,int,int ) ;
 int f815xxa_mem_serial_out ;
 scalar_t__ pci_resource_start (struct pci_dev*,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int pci_fintek_f815xxa_setup(struct serial_private *priv,
       const struct pciserial_board *board,
       struct uart_8250_port *port, int idx)
{
 struct pci_dev *pdev = priv->dev;
 struct f815xxa_data *data;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->idx = idx;
 spin_lock_init(&data->lock);

 port->port.private_data = data;
 port->port.iotype = UPIO_MEM;
 port->port.flags |= UPF_IOREMAP;
 port->port.mapbase = pci_resource_start(pdev, 0) + 8 * idx;
 port->port.serial_out = f815xxa_mem_serial_out;

 return 0;
}
