
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_low_level {int frequency_change; int set_timing; } ;


 int pxa2xx_pcmcia_frequency_change ;
 int pxa2xx_pcmcia_set_timing ;

void pxa2xx_drv_pcmcia_ops(struct pcmcia_low_level *ops)
{

 ops->set_timing = pxa2xx_pcmcia_set_timing;



}
