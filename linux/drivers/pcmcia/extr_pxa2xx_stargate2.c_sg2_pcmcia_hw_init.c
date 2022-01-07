
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_pcmcia_socket {TYPE_1__* stat; } ;
struct TYPE_2__ {char* name; int gpio; } ;


 int SG2_S0_GPIO_DETECT ;
 int SG2_S0_GPIO_READY ;
 size_t SOC_STAT_CD ;
 size_t SOC_STAT_RDY ;

__attribute__((used)) static int sg2_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{
 skt->stat[SOC_STAT_CD].gpio = SG2_S0_GPIO_DETECT;
 skt->stat[SOC_STAT_CD].name = "PCMCIA0 CD";
 skt->stat[SOC_STAT_RDY].gpio = SG2_S0_GPIO_READY;
 skt->stat[SOC_STAT_RDY].name = "PCMCIA0 RDY";
 return 0;
}
