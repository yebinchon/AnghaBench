
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {scalar_t__ pcmcia_irq; } ;



void pcmcia_cleanup_irq(struct pcmcia_socket *s)
{
 s->pcmcia_irq = 0;
 return;
}
