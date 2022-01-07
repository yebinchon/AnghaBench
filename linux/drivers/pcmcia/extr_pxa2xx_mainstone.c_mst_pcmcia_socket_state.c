
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_pcmcia_socket {size_t nr; TYPE_1__* stat; } ;
struct pcmcia_state {unsigned int bvd1; } ;
struct TYPE_2__ {int irq; } ;


 size_t SOC_STAT_BVD1 ;
 size_t SOC_STAT_BVD2 ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 unsigned int* mst_pcmcia_bvd1_status ;

__attribute__((used)) static void mst_pcmcia_socket_state(struct soc_pcmcia_socket *skt,
        struct pcmcia_state *state)
{
 unsigned int flip = mst_pcmcia_bvd1_status[skt->nr] ^ state->bvd1;






 if (flip) {
  mst_pcmcia_bvd1_status[skt->nr] = state->bvd1;
  if (state->bvd1)
   enable_irq(skt->stat[SOC_STAT_BVD1].irq);
  else
   disable_irq(skt->stat[SOC_STAT_BVD2].irq);
 }
}
