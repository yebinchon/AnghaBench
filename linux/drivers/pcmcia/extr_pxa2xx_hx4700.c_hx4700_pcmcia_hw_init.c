
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_pcmcia_socket {TYPE_1__* stat; } ;
struct TYPE_2__ {char* name; int gpio; } ;


 int ARRAY_SIZE (int ) ;
 int GPIO60_HX4700_CF_RNB ;
 int GPIOD4_CF_nCD ;
 int IRQ_TYPE_EDGE_BOTH ;
 size_t SOC_STAT_CD ;
 size_t SOC_STAT_RDY ;
 int gpio_request_array (int ,int ) ;
 int gpio_to_irq (int ) ;
 int gpios ;
 int irq_set_irq_type (int ,int ) ;

__attribute__((used)) static int hx4700_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{
 int ret;

 ret = gpio_request_array(gpios, ARRAY_SIZE(gpios));
 if (ret)
  goto out;
 irq_set_irq_type(gpio_to_irq(GPIOD4_CF_nCD), IRQ_TYPE_EDGE_BOTH);

 skt->stat[SOC_STAT_CD].gpio = GPIOD4_CF_nCD;
 skt->stat[SOC_STAT_CD].name = "PCMCIA CD";
 skt->stat[SOC_STAT_RDY].gpio = GPIO60_HX4700_CF_RNB;
 skt->stat[SOC_STAT_RDY].name = "PCMCIA Ready";

out:
 return ret;
}
