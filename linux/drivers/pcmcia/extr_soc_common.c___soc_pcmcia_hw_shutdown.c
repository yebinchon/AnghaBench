
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_pcmcia_socket {int clk; TYPE_2__* ops; TYPE_1__* stat; } ;
struct TYPE_4__ {int (* hw_shutdown ) (struct soc_pcmcia_socket*) ;} ;
struct TYPE_3__ {scalar_t__ irq; } ;


 int clk_disable_unprepare (int ) ;
 int free_irq (scalar_t__,struct soc_pcmcia_socket*) ;
 int stub1 (struct soc_pcmcia_socket*) ;

__attribute__((used)) static void __soc_pcmcia_hw_shutdown(struct soc_pcmcia_socket *skt,
 unsigned int nr)
{
 unsigned int i;

 for (i = 0; i < nr; i++)
  if (skt->stat[i].irq)
   free_irq(skt->stat[i].irq, skt);

 if (skt->ops->hw_shutdown)
  skt->ops->hw_shutdown(skt);

 clk_disable_unprepare(skt->clk);
}
