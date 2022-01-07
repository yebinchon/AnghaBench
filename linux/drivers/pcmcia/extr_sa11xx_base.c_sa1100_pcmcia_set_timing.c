
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int clk; } ;


 unsigned long clk_get_rate (int ) ;
 int sa1100_pcmcia_set_mecr (struct soc_pcmcia_socket*,unsigned long) ;

__attribute__((used)) static int
sa1100_pcmcia_set_timing(struct soc_pcmcia_socket *skt)
{
 unsigned long clk = clk_get_rate(skt->clk);

 return sa1100_pcmcia_set_mecr(skt, clk / 1000);
}
