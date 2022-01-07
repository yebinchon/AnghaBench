
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_timing {int io; int attr; int mem; } ;
struct soc_pcmcia_socket {int nr; } ;


 int pxa2xx_pcmcia_set_mcatt (int,int ,unsigned int) ;
 int pxa2xx_pcmcia_set_mcio (int,int ,unsigned int) ;
 int pxa2xx_pcmcia_set_mcmem (int,int ,unsigned int) ;
 int soc_common_pcmcia_get_timing (struct soc_pcmcia_socket*,struct soc_pcmcia_timing*) ;

__attribute__((used)) static int pxa2xx_pcmcia_set_mcxx(struct soc_pcmcia_socket *skt, unsigned int clk)
{
 struct soc_pcmcia_timing timing;
 int sock = skt->nr;

 soc_common_pcmcia_get_timing(skt, &timing);

 pxa2xx_pcmcia_set_mcmem(sock, timing.mem, clk);
 pxa2xx_pcmcia_set_mcatt(sock, timing.attr, clk);
 pxa2xx_pcmcia_set_mcio(sock, timing.io, clk);

 return 0;
}
