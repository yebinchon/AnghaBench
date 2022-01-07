
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_low_level {int frequency_change; int show_timing; int set_timing; scalar_t__ get_timing; } ;


 scalar_t__ sa1100_pcmcia_default_mecr_timing ;
 int sa1100_pcmcia_frequency_change ;
 int sa1100_pcmcia_set_timing ;
 int sa1100_pcmcia_show_timing ;

void sa11xx_drv_pcmcia_ops(struct pcmcia_low_level *ops)
{




 if (!ops->get_timing)
  ops->get_timing = sa1100_pcmcia_default_mecr_timing;


 ops->set_timing = sa1100_pcmcia_set_timing;
 ops->show_timing = sa1100_pcmcia_show_timing;



}
