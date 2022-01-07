
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_pcmcia_socket {TYPE_1__* stat; } ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int IRQ_TYPE_NONE ;
 int irq_set_irq_type (scalar_t__,int ) ;

__attribute__((used)) static void soc_pcmcia_hw_disable(struct soc_pcmcia_socket *skt)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(skt->stat); i++)
  if (skt->stat[i].irq)
   irq_set_irq_type(skt->stat[i].irq, IRQ_TYPE_NONE);
}
