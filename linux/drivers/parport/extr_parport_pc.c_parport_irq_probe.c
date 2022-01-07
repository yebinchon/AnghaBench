
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport_pc_private {scalar_t__ ecr; } ;
struct parport {scalar_t__ irq; int modes; struct parport_pc_private* private_data; } ;


 scalar_t__ PARPORT_IRQ_NONE ;
 int PARPORT_MODE_EPP ;
 int clear_epp_timeout (struct parport*) ;
 scalar_t__ get_superio_irq (struct parport*) ;
 scalar_t__ irq_probe_ECP (struct parport*) ;
 void* irq_probe_EPP (struct parport*) ;
 scalar_t__ irq_probe_SPP (struct parport*) ;
 scalar_t__ programmable_irq_support (struct parport*) ;

__attribute__((used)) static int parport_irq_probe(struct parport *pb)
{
 struct parport_pc_private *priv = pb->private_data;

 if (priv->ecr) {
  pb->irq = programmable_irq_support(pb);

  if (pb->irq == PARPORT_IRQ_NONE)
   pb->irq = irq_probe_ECP(pb);
 }

 if ((pb->irq == PARPORT_IRQ_NONE) && priv->ecr &&
     (pb->modes & PARPORT_MODE_EPP))
  pb->irq = irq_probe_EPP(pb);

 clear_epp_timeout(pb);

 if (pb->irq == PARPORT_IRQ_NONE && (pb->modes & PARPORT_MODE_EPP))
  pb->irq = irq_probe_EPP(pb);

 clear_epp_timeout(pb);

 if (pb->irq == PARPORT_IRQ_NONE)
  pb->irq = irq_probe_SPP(pb);

 if (pb->irq == PARPORT_IRQ_NONE)
  pb->irq = get_superio_irq(pb);

 return pb->irq;
}
