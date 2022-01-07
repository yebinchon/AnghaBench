
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; int dev; int irqflags; } ;
struct sci_port {int* irqs; int * irqstr; struct uart_port port; } ;
struct sci_irq_desc {int desc; int handler; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ SCIx_IRQ_IS_MUXED (struct sci_port*) ;
 int SCIx_MUX_IRQ ;
 int SCIx_NR_IRQS ;
 int dev_err (int ,char*,int ) ;
 int dev_name (int ) ;
 int free_irq (int,struct sci_port*) ;
 int kasprintf (int ,char*,int ,int ) ;
 int kfree (int ) ;
 int request_irq (int,int ,int ,int ,struct sci_port*) ;
 struct sci_irq_desc* sci_irq_desc ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sci_request_irq(struct sci_port *port)
{
 struct uart_port *up = &port->port;
 int i, j, w, ret = 0;

 for (i = j = 0; i < SCIx_NR_IRQS; i++, j++) {
  const struct sci_irq_desc *desc;
  int irq;


  for (w = 0; w < i; w++)
   if (port->irqs[w] == port->irqs[i])
    w = i + 1;
  if (w > i)
   continue;

  if (SCIx_IRQ_IS_MUXED(port)) {
   i = SCIx_MUX_IRQ;
   irq = up->irq;
  } else {
   irq = port->irqs[i];





   if (unlikely(irq < 0))
    continue;
  }

  desc = sci_irq_desc + i;
  port->irqstr[j] = kasprintf(GFP_KERNEL, "%s:%s",
         dev_name(up->dev), desc->desc);
  if (!port->irqstr[j]) {
   ret = -ENOMEM;
   goto out_nomem;
  }

  ret = request_irq(irq, desc->handler, up->irqflags,
      port->irqstr[j], port);
  if (unlikely(ret)) {
   dev_err(up->dev, "Can't allocate %s IRQ\n", desc->desc);
   goto out_noirq;
  }
 }

 return 0;

out_noirq:
 while (--i >= 0)
  free_irq(port->irqs[i], port);

out_nomem:
 while (--j >= 0)
  kfree(port->irqstr[j]);

 return ret;
}
