
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {scalar_t__ pci_irq; scalar_t__ pcmcia_irq; } ;
struct pcmcia_device {scalar_t__ irq; struct pcmcia_socket* socket; } ;


 int EINVAL ;
 int IRQF_SHARED ;
 int pcmcia_setup_isa_irq (struct pcmcia_device*,int ) ;

int pcmcia_setup_irq(struct pcmcia_device *p_dev)
{
 struct pcmcia_socket *s = p_dev->socket;

 if (p_dev->irq)
  return 0;


 if (s->pcmcia_irq) {
  p_dev->irq = s->pcmcia_irq;
  return 0;
 }


 if (!pcmcia_setup_isa_irq(p_dev, 0))
  return 0;


 if (!pcmcia_setup_isa_irq(p_dev, IRQF_SHARED))
  return 0;


 if (s->pci_irq) {
  p_dev->irq = s->pcmcia_irq = s->pci_irq;
  return 0;
 }

 return -EINVAL;
}
