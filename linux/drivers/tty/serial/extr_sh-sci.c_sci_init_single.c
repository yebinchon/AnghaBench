
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {unsigned int line; int type; int flags; int regshift; scalar_t__ irq; int serial_out; int serial_in; scalar_t__ irqflags; int fifosize; int * dev; int mapbase; int iotype; int * ops; } ;
struct sci_port {int reg_size; scalar_t__* irqs; int rx_trigger; TYPE_1__* params; int sampling_rate_mask; scalar_t__ hscif_tot; scalar_t__ rx_fifo_timeout; struct plat_sci_port const* cfg; struct uart_port port; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;
struct plat_sci_port {int type; int flags; scalar_t__ sampling_rate; int regtype; } ;
struct TYPE_2__ {int fifosize; int sampling_rate_mask; } ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int IORESOURCE_MEM ;

 int PORT_SCI ;



 int SCI_SR (scalar_t__) ;
 size_t SCIx_RXI_IRQ ;
 int SCIx_SH7705_SCIF_REGTYPE ;
 int UPF_BOOT_AUTOCONF ;
 int UPF_FIXED_PORT ;
 int UPIO_MEM ;
 scalar_t__ platform_get_irq (struct platform_device*,unsigned int) ;
 scalar_t__ platform_get_irq_optional (struct platform_device*,unsigned int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_runtime_enable (int *) ;
 int resource_size (struct resource const*) ;
 int sci_init_clocks (struct sci_port*,int *) ;
 TYPE_1__* sci_probe_regmap (struct plat_sci_port const*) ;
 int sci_serial_in ;
 int sci_serial_out ;
 int sci_uart_ops ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int sci_init_single(struct platform_device *dev,
      struct sci_port *sci_port, unsigned int index,
      const struct plat_sci_port *p, bool early)
{
 struct uart_port *port = &sci_port->port;
 const struct resource *res;
 unsigned int i;
 int ret;

 sci_port->cfg = p;

 port->ops = &sci_uart_ops;
 port->iotype = UPIO_MEM;
 port->line = index;

 res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (res == ((void*)0))
  return -ENOMEM;

 port->mapbase = res->start;
 sci_port->reg_size = resource_size(res);

 for (i = 0; i < ARRAY_SIZE(sci_port->irqs); ++i) {
  if (i)
   sci_port->irqs[i] = platform_get_irq_optional(dev, i);
  else
   sci_port->irqs[i] = platform_get_irq(dev, i);
 }
 if (sci_port->irqs[0] < 0)
  return -ENXIO;

 if (sci_port->irqs[1] < 0)
  for (i = 1; i < ARRAY_SIZE(sci_port->irqs); i++)
   sci_port->irqs[i] = sci_port->irqs[0];

 sci_port->params = sci_probe_regmap(p);
 if (unlikely(sci_port->params == ((void*)0)))
  return -EINVAL;

 switch (p->type) {
 case 128:
  sci_port->rx_trigger = 48;
  break;
 case 131:
  sci_port->rx_trigger = 64;
  break;
 case 129:
  sci_port->rx_trigger = 32;
  break;
 case 130:
  if (p->regtype == SCIx_SH7705_SCIF_REGTYPE)

   sci_port->rx_trigger = 1;
  else
   sci_port->rx_trigger = 8;
  break;
 default:
  sci_port->rx_trigger = 1;
  break;
 }

 sci_port->rx_fifo_timeout = 0;
 sci_port->hscif_tot = 0;





 sci_port->sampling_rate_mask = p->sampling_rate
         ? SCI_SR(p->sampling_rate)
         : sci_port->params->sampling_rate_mask;

 if (!early) {
  ret = sci_init_clocks(sci_port, &dev->dev);
  if (ret < 0)
   return ret;

  port->dev = &dev->dev;

  pm_runtime_enable(&dev->dev);
 }

 port->type = p->type;
 port->flags = UPF_FIXED_PORT | UPF_BOOT_AUTOCONF | p->flags;
 port->fifosize = sci_port->params->fifosize;

 if (port->type == PORT_SCI) {
  if (sci_port->reg_size >= 0x20)
   port->regshift = 2;
  else
   port->regshift = 1;
 }
 port->irq = sci_port->irqs[SCIx_RXI_IRQ];
 port->irqflags = 0;

 port->serial_in = sci_serial_in;
 port->serial_out = sci_serial_out;

 return 0;
}
