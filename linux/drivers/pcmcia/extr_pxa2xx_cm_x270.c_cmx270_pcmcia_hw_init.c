
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_pcmcia_socket {TYPE_1__* stat; } ;
struct TYPE_2__ {char* name; int gpio; } ;


 int GPIO_PCMCIA_RESET ;
 int GPIO_PCMCIA_S0_CD_VALID ;
 int GPIO_PCMCIA_S0_RDYINT ;
 size_t SOC_STAT_CD ;
 size_t SOC_STAT_RDY ;
 int gpio_direction_output (int ,int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int cmx270_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{
 int ret = gpio_request(GPIO_PCMCIA_RESET, "PCCard reset");
 if (ret)
  return ret;
 gpio_direction_output(GPIO_PCMCIA_RESET, 0);

 skt->stat[SOC_STAT_CD].gpio = GPIO_PCMCIA_S0_CD_VALID;
 skt->stat[SOC_STAT_CD].name = "PCMCIA0 CD";
 skt->stat[SOC_STAT_RDY].gpio = GPIO_PCMCIA_S0_RDYINT;
 skt->stat[SOC_STAT_RDY].name = "PCMCIA0 RDY";

 return ret;
}
