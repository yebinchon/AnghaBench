
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct soc_pcmcia_socket {size_t nr; } ;
struct pcmcia_state {int ready; int bvd1; int vs_3v; scalar_t__ vs_Xv; scalar_t__ bvd2; } ;


 int BALLOON3_BP_NSTSCHG_IRQ ;
 int BALLOON3_CF_STATUS_REG ;
 int BALLOON3_CF_nIRQ ;
 int BALLOON3_CF_nSTSCHG_BVD1 ;
 int __raw_readw (int ) ;
 int* balloon3_pcmcia_status ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;

__attribute__((used)) static void balloon3_pcmcia_socket_state(struct soc_pcmcia_socket *skt,
        struct pcmcia_state *state)
{
 uint16_t status;
 int flip;


 status = __raw_readw(BALLOON3_CF_STATUS_REG);
 flip = (status ^ balloon3_pcmcia_status[skt->nr])
  & BALLOON3_CF_nSTSCHG_BVD1;





 if (flip) {
  balloon3_pcmcia_status[skt->nr] = status;
  if (status & BALLOON3_CF_nSTSCHG_BVD1)
   enable_irq(BALLOON3_BP_NSTSCHG_IRQ);
  else
   disable_irq(BALLOON3_BP_NSTSCHG_IRQ);
 }

 state->ready = !!(status & BALLOON3_CF_nIRQ);
 state->bvd1 = !!(status & BALLOON3_CF_nSTSCHG_BVD1);
 state->bvd2 = 0;
 state->vs_3v = 1;
 state->vs_Xv = 0;
}
