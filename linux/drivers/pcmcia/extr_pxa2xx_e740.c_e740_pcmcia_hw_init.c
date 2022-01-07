
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_pcmcia_socket {scalar_t__ nr; TYPE_1__* stat; } ;
struct TYPE_2__ {char* name; int gpio; } ;


 int GPIO_E740_PCMCIA_CD0 ;
 int GPIO_E740_PCMCIA_CD1 ;
 int GPIO_E740_PCMCIA_RDY0 ;
 int GPIO_E740_PCMCIA_RDY1 ;
 size_t SOC_STAT_CD ;
 size_t SOC_STAT_RDY ;

__attribute__((used)) static int e740_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{
 if (skt->nr == 0) {
  skt->stat[SOC_STAT_CD].gpio = GPIO_E740_PCMCIA_CD0;
  skt->stat[SOC_STAT_CD].name = "CF card detect";
  skt->stat[SOC_STAT_RDY].gpio = GPIO_E740_PCMCIA_RDY0;
  skt->stat[SOC_STAT_RDY].name = "CF ready";
 } else {
  skt->stat[SOC_STAT_CD].gpio = GPIO_E740_PCMCIA_CD1;
  skt->stat[SOC_STAT_CD].name = "Wifi switch";
  skt->stat[SOC_STAT_RDY].gpio = GPIO_E740_PCMCIA_RDY1;
  skt->stat[SOC_STAT_RDY].name = "Wifi ready";
 }

 return 0;
}
