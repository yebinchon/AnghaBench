
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_port {int* irqs; int * irqstr; } ;


 scalar_t__ SCIx_IRQ_IS_MUXED (struct sci_port*) ;
 int SCIx_NR_IRQS ;
 int free_irq (int,struct sci_port*) ;
 int kfree (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void sci_free_irq(struct sci_port *port)
{
 int i, j;





 for (i = 0; i < SCIx_NR_IRQS; i++) {
  int irq = port->irqs[i];





  if (unlikely(irq < 0))
   continue;


  for (j = 0; j < i; j++)
   if (port->irqs[j] == irq)
    j = i + 1;
  if (j > i)
   continue;

  free_irq(port->irqs[i], port);
  kfree(port->irqstr[i]);

  if (SCIx_IRQ_IS_MUXED(port)) {

   return;
  }
 }
}
