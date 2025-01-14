
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_pcmcia_socket {TYPE_1__* stat; } ;
struct TYPE_2__ {char* name; } ;


 int EN0 ;
 int EN1 ;
 size_t SOC_STAT_CD ;
 size_t SOC_STAT_RDY ;
 int VCC_3V_EN ;
 int VCC_5V_EN ;
 int simpad_clear_cs3_bit (int) ;
 int soc_pcmcia_request_gpiods (struct soc_pcmcia_socket*) ;

__attribute__((used)) static int simpad_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{

 simpad_clear_cs3_bit(VCC_3V_EN|VCC_5V_EN|EN0|EN1);

 skt->stat[SOC_STAT_CD].name = "cf-detect";
 skt->stat[SOC_STAT_RDY].name = "cf-ready";

 return soc_pcmcia_request_gpiods(skt);
}
