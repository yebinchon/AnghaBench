
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int config_flags; int config_index; int config_regs; } ;


 int CONF_AUTO_SET_IO ;
 int CONF_ENABLE_IRQ ;
 int PRESENT_OPTION ;
 int avmcs_config (struct pcmcia_device*) ;

__attribute__((used)) static int avmcs_probe(struct pcmcia_device *p_dev)
{

 p_dev->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;
 p_dev->config_index = 1;
 p_dev->config_regs = PRESENT_OPTION;

 return avmcs_config(p_dev);
}
